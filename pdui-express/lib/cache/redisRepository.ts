import { PDUI } from "../init";

export async function getCacheIdByExpressionId(
    expressionId: string,
): Promise<string | null> {
    return new Promise((resolve, reject) => {
        PDUI.redisClient
            .get(expressionId)
            .then((cachedData) => {
                if (cachedData) {
                    resolve(cachedData);
                } else {
                    resolve(null);
                }
            })
            .catch((err) => {
                reject(err);
            });
    });
}

export async function setCacheIdByExpressionId(
    expressionId: string,
    cacheId: string,
): Promise<string> {
    return new Promise<string>((resolve, reject) => {
        PDUI.redisClient
            .set(expressionId, cacheId)
            .then(() => {
                resolve(cacheId);
            })
            .catch((err) => {
                reject(err);
            });
    });
}

export async function invalidateCacheByExpressionId(
    expressionId: string,
): Promise<void> {
    return new Promise<void>((resolve, reject) => {
        PDUI.redisClient
            .del(expressionId)
            .then(() => {
                resolve();
            })
            .catch((err) => {
                reject(err);
            });
    });
}

export async function invalidateAllCache(): Promise<void> {
    return new Promise<void>((resolve, reject) => {
        PDUI.redisClient
            .flushAll()
            .then(() => {
                resolve();
            })
            .catch((err) => {
                reject(err);
            });
    });
}
