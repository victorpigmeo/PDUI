import { PDUI } from "../init";

export async function getCacheIdByWidgetId(
    widgetId: string,
): Promise<string | null> {
    return new Promise((resolve, reject) => {
        PDUI.redisClient
            .get(widgetId)
            .then((cachedData) => {
                if (cachedData) {
                    resolve(cachedData);
                } else {
                    resolve(null);
                }
            })
            .catch((err) => {
                console.error("PDUI Redis error\n", err);
                reject(err);
            });
    });
}

export async function setCacheIdByWidgetId(
    widgetId: string,
    cacheId: string,
): Promise<string> {
    return new Promise<string>((resolve, reject) => {
        PDUI.redisClient
            .set(widgetId, cacheId)
            .then(() => {
                resolve(cacheId);
            })
            .catch((err) => {
                console.error("PDUI Redis error\n", err);
                reject(err);
            });
    });
}

export async function invalidateCacheByWidgetId(
    widgetId: string,
): Promise<void> {
    return new Promise<void>((resolve, reject) => {
        PDUI.redisClient
            .del(widgetId)
            .then(() => {
                resolve();
            })
            .catch((err) => {
                console.error("PDUI Redis error\n", err);
                reject(err);
            });
    });
}
