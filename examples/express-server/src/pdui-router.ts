import { PDUIRoute } from "pdui-express/models";
import { HomeController } from "./pdui/controllers/home-controller";

const pduiRoutes: PDUIRoute[] = [
    new PDUIRoute({ id: "home", handler: HomeController.build }),
];

export default pduiRoutes;
