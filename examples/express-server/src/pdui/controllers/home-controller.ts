import { PDUIWidget } from "pdui-express/models";

import { PDUIDebugPrint, PDUIGenericFn } from "pdui-express/core";

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
                            child: new PDUIText({ data: "Press me" }),
                            onPressed: new PDUIGenericFn({
                                params: {
                                    num1: 22,
                                    num2: 15,
                                },
                                body: () => {
                                    const steps = [];
                                    const msg = "Hello, World!";
                                    const conta = 22 + 15;

                                    steps.push(new PDUIDebugPrint(msg));
                                    steps.push(new PDUIDebugPrint(conta));

                                    return steps;
                                },
                            }),
                            // onPressed: new PDUIDebugPrint("OI"),
                        }),
                    ],
                }),
            }),
        });
    }
}
