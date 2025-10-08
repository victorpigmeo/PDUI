import type { Request, Response } from "express";

export async function invalidateCache(_request: Request, response: Response) {
    response.status(200).send("FIZ ND");
}
