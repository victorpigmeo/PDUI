import { PDUIWidget } from "pdui-express/models";

import {
    PDUIDebugPrint,
    PDUIGenericFn,
    PDUINavigation,
} from "pdui-express/core";

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
                title: "Home",
                backgroundColor: "#FFFF00FF",
            }),
            body: new PDUICenter({
                child: new PDUIColumn({
                    children: [
                        new PDUIText({ data: "HOME SCREEN" }),
                        new PDUIElevatedButton({
                            child: new PDUIText({ data: "To form" }),
                            onPressed: new PDUINavigation({
                                expressionId: "form",
                            }),
                        }),

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

                                    const column = new PDUIColumn({
                                        children: [
                                            new PDUIText({
                                                data: "Test debugPrint",
                                            }),
                                        ],
                                    });

                                    steps.push(new PDUIDebugPrint(msg));
                                    steps.push(new PDUIDebugPrint(conta));
                                    steps.push(new PDUIDebugPrint(column));

                                    steps.push(
                                        new PDUINavigation({
                                            expressionId: "about",
                                        }),
                                    );

                                    return steps;
                                },
                            }),
                        }),
                    ],
                }),
            }),
        });
    }
}
