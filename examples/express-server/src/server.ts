import express from "express";
import pdui from "pdui-express";
import mainRouter from "./main-router";
import pduiRoutes from "./pdui-router";

const SERVER_PORT = process.env.SERVER_PORT;
const application = express();

pdui.init
    .start({ application: application, useJwt: false, useCache: true })
    .then((_pdui) => {
        console.log("PDUI Initialized!!!");
        pdui.init.registerRoutes({ routes: pduiRoutes }).then((pduiRoutes) => {
            console.log("PDUI Routes registered:\n", pduiRoutes);
        });
    });

mainRouter(application);

// TODO: maybe multi-port?
application.listen(SERVER_PORT, () => {
    console.log(`Server started at: ${SERVER_PORT}!`);
});
