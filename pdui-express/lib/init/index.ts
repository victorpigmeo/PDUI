import express, { type Application } from "express";
import { getWidget } from "../controllers/widgetController";
import { jwtMiddleware } from "../auth";
import type { PDUIRoute } from "../models/PDUIRoute";
import { createClient, type RedisClientType } from "redis";
import { invalidateCache } from "../controllers/cacheController";

export class PDUI {
    static routes: PDUIRoute[] = [];
    static useCache: boolean = false;
    static redisClient: RedisClientType;
}

async function startRedisClient() {
    PDUI.useCache = true;
    PDUI.redisClient = createClient({
        url: "redis://localhost:6379",
        name: "pdui",
    });

    PDUI.redisClient.on("error", (err) =>
        console.error("PDUI Cache error", err),
    );

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
    const promise = new Promise<PDUI>(async (resolve, reject) => {
        if (useCache) {
            await startRedisClient();
        }

        const pduiRoutes = express.Router();

        if (useJwt) {
            // TODO: Maybe separate this to a new function
            pduiRoutes.get(
                "/pdui/get-widget/:widgetId",
                jwtMiddleware,
                getWidget,
            );
        } else {
            //TODO: create controller for this
            pduiRoutes.get("/pdui/get-widget/:widgetId", getWidget);
        }

        pduiRoutes.delete("/pdui/invalidate-cache/:widgetId", invalidateCache);

        application.use(pduiRoutes);

        if (useCache) {
            if (!PDUI.redisClient) {
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
    const promise = new Promise<PDUIRoute[]>(async (resolve, reject) => {
        const routesPromises = routes.map((route) => {
            return new Promise((resolve, _reject) => {
                PDUI.routes.push(route);
                resolve(route);
            });
        });

        Promise.all(routesPromises)
            .then(() => {
                resolve(PDUI.routes);
            })
            .catch((err) => {
                console.error("PDUI Error registering routes\n", err);
                reject({ error: "Error registering routes" });
            });
    });

    return promise;
}
