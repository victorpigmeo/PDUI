import type { Request, Response } from "express";
import jwt from "jsonwebtoken";

export class AuthController {
    static login(request: Request, response: Response): void {
        response.status(200).json({
            jwt_token: jwt.sign({ user: "XPTO" }, process.env.JWT_SECRET),
        });
    }
}
