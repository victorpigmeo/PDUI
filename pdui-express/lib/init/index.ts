import express, { type Application } from "express";
import { getExpression } from "../controllers/expressionController";
import { jwtMiddleware } from "../auth";
import type { PDUIRoute } from "../models/PDUIRoute";
import { createClient, type RedisClientType } from "redis";
import { invalidateCache } from "../controllers/cacheController";
import { logger } from "../core/PDUILogger";

export class PDUI {
    static routes: PDUIRoute[] = [];
    static useCache: boolean = false;
    static redisClient: RedisClientType;
}

async function startRedisClient() {
    const redisHost = process.env.PDUI_REDIS_HOST;

    const redisLogger = logger.child({ redisHost });
    redisLogger.info("[PDUI] Starting Redis connection");

    PDUI.useCache = true;
    PDUI.redisClient = createClient({
        url: redisHost,
        name: "pdui",
        socket: {
            reconnectStrategy: (retries: number) => {
                if (retries === 20) {
                    redisLogger.error("[PDUI] Redis max retries reached");
                    return false;
                }

                return 1000;
            },
        },
    });

    PDUI.redisClient.on("error", (err) => {
        redisLogger.error(JSON.stringify(err));
    });

    PDUI.redisClient.on("connect", () => {
        redisLogger.info("[PDUI] Redis connection successful");
    });

    await PDUI.redisClient.connect();
}

// TODO: Add Logs
export async function start({
    application,
    useJwt,
    useCache,
}: {
    application: Application;
    useJwt: boolean;
    useCache: boolean;
}): Promise<PDUI> {
    const startLogger = logger.child({ useJwt, useCache });
    startLogger.info("[PDUI] Starting");

    const promise = new Promise<PDUI>(async (resolve, reject) => {
        if (useCache) {
            try {
                await startRedisClient();
            } catch (err) {
                throw err;
            }
        }

        const pduiRoutes = express.Router();

        if (useJwt) {
            // TODO: Maybe separate this to a new function
            pduiRoutes.get(
                "/pdui/get-expression/:expressionId",
                jwtMiddleware,
                getExpression,
            );
        } else {
            //TODO: create controller for this
            pduiRoutes.get("/pdui/get-expression/:expressionId", getExpression);
        }

        pduiRoutes.delete(
            "/pdui/invalidate-cache/:expressionId",
            invalidateCache,
        );
        pduiRoutes.delete("/pdui/invalidate-cache", invalidateCache);

        application.use(pduiRoutes);

        if (useCache) {
            if (!PDUI.redisClient.isReady) {
                startLogger.error(
                    "[PDUI] Error connecting to Redis with useCache active",
                );
                reject({ error: "RedisClient not connected" });
            }
        }

        resolve(PDUI);
    });

    return promise;
}

// TODO: Implement this
export function useJwt() {}

export function registerRoutes({
    routes,
}: {
    routes: PDUIRoute[];
}): Promise<PDUIRoute[]> {
    const routerLogger = logger.child({ pduiRouteCount: routes.length });
    routerLogger.info("[PDUI] Starting router");

    const promise = new Promise<PDUIRoute[]>(async (resolve, reject) => {
        const routesPromises = routes.map((route) => {
            return new Promise((resolve, _reject) => {
                const routePathRegex: RegExp = new RegExp(
                    "^[a-zA-Z.-_][^0-9]+$",
                );

                if (routePathRegex.test(route.id)) {
                    PDUI.routes.push(route);
                    resolve(route);
                } else {
                    reject(
                        new Error(
                            `Error registering route: '${route.id}', some characters are not allowed (Allowed characters: a-zA-Z.-_)`,
                        ),
                    );
                }
            });
        });

        Promise.all(routesPromises)
            .then(() => {
                routerLogger.info("[PDUI] Router started succesfully");
                routerLogger.info(
                    `[PDUI] Registered routes: [${PDUI.routes.map(
                        (route) => route.id,
                    )}]`,
                );
                resolve(PDUI.routes);
            })
            .catch((err) => {
                routerLogger.error("[PDUI] Error registering routes");
                routerLogger.error(JSON.stringify(err));

                reject({ error: "Error registering routes" });
            });
    });

    return promise;
}
