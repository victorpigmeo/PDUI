import type { Request, Response } from "express";
import {
    invalidateAllCache,
    invalidateCacheByExpressionId,
} from "../cache/redisRepository";
import pino from "pino";

const logger = pino();

export async function invalidateCache(request: Request, response: Response) {
    const expressionId = request.params.expressionId;
    const invalidateCacheLogger = logger.child({ expressionId });

    if (expressionId) {
        invalidateCacheByExpressionId(expressionId)
            .then(() => {
                invalidateCacheLogger.info(
                    `[PDUI] Cache invalidated for expressionId: ${expressionId}`,
                );
                response.status(200).json({ cacheInvalidated: true });
            })
            .catch((err) => {
                invalidateCacheLogger.error(
                    `[PDUI] Error trying to invalidate cache for expressionId: ${expressionId}`,
                );
                invalidateCacheLogger.error(err);
                response.status(500).json({ cacheInvalidated: false });
            });
    } else {
        invalidateAllCache()
            .then(() => {
                invalidateCacheLogger.info("[PDUI] All cache invalidated");
                response.status(200).json({ cacheInvalidated: true });
            })
            .catch((err) => {
                invalidateCacheLogger.error(
                    "[PDUI] Error trying to invalidate all cache",
                );
                invalidateCacheLogger.error(err);
                response.status(500).json({ cacheInvalidated: false });
            });
    }
    response.status(200).send("");
}
