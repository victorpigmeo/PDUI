import { PDUIPopNavigation } from "pdui-express/core";
import type { PDUIWidget } from "pdui-express/models";
import {
    PDUIAppBar,
    PDUICenter,
    PDUIColumn,
    PDUIElevatedButton,
    PDUIScaffold,
    PDUIText,
} from "pdui-express/widgets";

export class AbountController {
    static build(): PDUIWidget {
        return new PDUIScaffold({
            appBar: new PDUIAppBar({
                title: "About",
                backgroundColor: "#FFFF0000",
            }),
            body: new PDUICenter({
                child: new PDUIColumn({
                    children: [
                        new PDUIText({ data: "ABOUT SCREEN" }),
                        new PDUIElevatedButton({
                            child: new PDUIText({ data: "Back" }),
                            onPressed: new PDUIPopNavigation(),
                        }),
                    ],
                }),
            }),
        });
    }
}
