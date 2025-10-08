import type { Request, Response } from "express";

export function jwtMiddleware(
    _request: Request,
    _response: Response,
    next: () => void,
) {
    console.log("teste");

    next();
}
