import { PDUIWidget } from "pdui-express/models";
import {
    PDUIAppBar,
    PDUICenter,
    PDUIColumn,
    PDUIElevatedButton,
    PDUIScaffold,
    PDUIText,
} from "pdui-express/widgets";

export class HomeController {
    static build(): PDUIWidget {
        return new PDUIScaffold({
            appBar: new PDUIAppBar({
                title: "TESTE123",
                backgroundColor: "#FFFF00FF",
            }),
            body: new PDUICenter({
                child: new PDUIColumn({
                    children: [
                        new PDUIText({ data: "Texto1" }),
                        new PDUIText({ data: "Texto2" }),
                        new PDUIText({ data: "Texto3" }),
                        new PDUIElevatedButton({
                            child: new PDUIText({ data: "Butão" }),
                        }),
                    ],
                }),
            }),
        });
    }
}
