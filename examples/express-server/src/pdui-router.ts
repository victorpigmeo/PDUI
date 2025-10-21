import { PDUIRoute } from "pdui-express/models";
import { HomeController } from "./pdui/controllers/home-controller";
import { AboutController } from "./pdui/controllers/about-controller";
import { FormController } from "./pdui/controllers/form-controller";

const pduiRoutes: PDUIRoute[] = [
    new PDUIRoute({ id: "home", handler: HomeController.build }),
    new PDUIRoute({ id: "about", handler: AboutController.build }),
    new PDUIRoute({ id: "form", handler: FormController.build }),
];

export default pduiRoutes;
