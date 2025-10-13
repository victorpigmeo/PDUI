import type { Request, Response } from "express";
import { PDUI } from "../init";

import { v4 } from "uuid";

import {
    getCacheIdByExpressionId,
    setCacheIdByExpressionId,
} from "../cache/redisRepository";

import { PDUIRoute } from "../models/PDUIRoute";
import { PBExpression } from "../proto-out/pdui-proto-out.ts";

export async function getExpression(request: Request, response: Response) {
    const expressionId = request.params.expressionId!;
    const cacheId = request.query.cacheId;

    const route: PDUIRoute | undefined = PDUI.routes.find((route) => {
        return route.id === expressionId;
    });

    if (!route) {
        // TODO: improve error handling
        response.status(404).json({ error: "Route not found" });
    } else {
        if (PDUI.useCache) {
            if (cacheId) {
                const savedCacheId =
                    await getCacheIdByExpressionId(expressionId);

                if (savedCacheId === cacheId) {
                    response.status(200).json({
                        cacheAlive: true,
                    });
                } else {
                    if (savedCacheId) {
                        //TODO: deduplicate this
                        buildAndSendResponse(route, false, savedCacheId);
                    } else {
                        const newCacheId = await setCacheIdByExpressionId(
                            expressionId,
                            v4(),
                        );

                        //TODO: deduplicate this
                        buildAndSendResponse(route, false, newCacheId);
                    }
                }
            } else {
                const cacheId = await getCacheIdByExpressionId(expressionId);

                if (cacheId) {
                    //TODO: deduplicate this
                    buildAndSendResponse(route, false, cacheId);
                } else {
                    //Here the client didn't send the cacheId
                    //and the server does not have a cacheId for this expr
                    //so we create a new entry for this expr
                    const newCacheId = await setCacheIdByExpressionId(
                        expressionId,
                        v4(),
                    );

                    buildAndSendResponse(route, false, newCacheId);
                }
            }
        } else {
            buildAndSendResponse(route, undefined, undefined);
        }
    }

    function buildAndSendResponse(
        route: PDUIRoute,
        cacheAlive?: Boolean,
        cacheId?: String,
    ): void {
        response.status(200).json({
            payload: PBExpression.toBinary(route.handler().toExpression()),
            cacheAlive: cacheAlive,
            cacheId: cacheId,
        });
    }
}
