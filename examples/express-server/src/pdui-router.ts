import { PDUIRoute } from "pdui-express/models";
import { HomeController } from "./pdui/controllers/home-controller";
import { AbountController } from "./pdui/controllers/about-controller";

const pduiRoutes: PDUIRoute[] = [
    new PDUIRoute({ id: "home", handler: HomeController.build }),
    new PDUIRoute({ id: "about", handler: AbountController.build }),
];

export default pduiRoutes;
