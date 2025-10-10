import type { Request, Response } from "express";
import { PDUI } from "../init";

import { v4 } from "uuid";

import {
    getCacheIdByWidgetId,
    setCacheIdByWidgetId,
} from "../cache/redisRepository";

import { PDUIRoute } from "../models/PDUIRoute";
import { PBExpression } from "../widgets/proto-out/widgets";

export async function getWidget(request: Request, response: Response) {
    const widgetId = request.params.widgetId!;
    const cacheId = request.query.cacheId;

    const route: PDUIRoute | undefined = PDUI.routes.find((route) => {
        return route.id === widgetId;
    });

    if (!route) {
        // TODO: improve error handling
        response.status(404).json({ error: "Route not found" });
    } else {
        if (PDUI.useCache) {
            if (cacheId) {
                const savedCacheId = await getCacheIdByWidgetId(widgetId);

                if (savedCacheId === cacheId) {
                    response.status(200).json({
                        cacheAlive: true,
                    });
                } else {
                    if (savedCacheId) {
                        //TODO: deduplicate this
                        buildAndSendResponse(route, false, savedCacheId);
                    } else {
                        const newCacheId = await setCacheIdByWidgetId(
                            widgetId,
                            v4(),
                        );

                        //TODO: deduplicate this
                        buildAndSendResponse(route, false, newCacheId);
                    }
                }
            } else {
                const cacheId = await getCacheIdByWidgetId(widgetId);

                if (cacheId) {
                    //TODO: deduplicate this
                    buildAndSendResponse(route, false, cacheId);
                } else {
                    //Here the client didn't send the cacheId
                    //and the server does not have a cacheId for this expr
                    //so we create a new entry for this expr
                    const newCacheId = await setCacheIdByWidgetId(
                        widgetId,
                        v4(),
                    );

                    buildAndSendResponse(route, false, newCacheId);
                }
            }
        } else {
            response.status(200).json({
                payload: PBExpression.toBinary(route.handler().toExpression()),
            });
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
