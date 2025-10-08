import express from "express";
import type { Application, Request, Response } from "express";
import { AuthController } from "./controllers/auth";

// TODO: REMOVE THIS
const loginRoutes = express.Router();
loginRoutes.get("/login", AuthController.login);

const mainRouter = (application: Application) => {
    application
        .route("/")
        .get((request: Request, response: Response) =>
            response.status(200).send("PDUI Express Test Server"),
        );

    application.use(
        express.json(),
        loginRoutes,
        /*Backend routes*/
    );
};

export default mainRouter;
