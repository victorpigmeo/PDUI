import { describe, expect, test } from "bun:test";
import { PDUIElevatedButton, PDUIText } from "../../../widgets";
import { PDUIDebugPrint } from "../../../core";

describe("PDUIElevatedButton test", () => {
    test("PDUIElevatedButton with PDUIDebugPrint as onPressed", () => {
        const buttonText = new PDUIText({
            key: "button_text_1",
            data: "Press me",
        });

        const elevatedButton = new PDUIElevatedButton({
            key: "button_1",
            child: buttonText,
            onPressed: new PDUIDebugPrint("Test Debug Print"),
        });

        expect(elevatedButton.identity).toBe("elevatedButton");
        expect(elevatedButton.key).toBe("button_1");
        expect(elevatedButton.child).toStrictEqual(buttonText);

        expect(elevatedButton.toPB()).toStrictEqual({
            child: {
                data: "Press me",
            },
            onPressed: {
                expression: {
                    identity: "string",
                    payload: {
                        oneofKind: "rawString",
                        rawString: "Test Debug Print",
                    },
                },
            },
        });

        expect(elevatedButton.toExpression()).toStrictEqual({
            key: "button_1",
            identity: "elevatedButton",
            payload: {
                oneofKind: "elevatedButton",
                elevatedButton: {
                    child: {
                        identity: "text",
                        key: "button_text_1",
                        payload: {
                            oneofKind: "text",
                            text: {
                                data: "Press me",
                            },
                        },
                    },
                    onPressed: {
                        identity: "debugPrint",
                        payload: {
                            oneofKind: "debugPrint",
                            debugPrint: {
                                expression: {
                                    identity: "string",
                                    key: undefined,
                                    payload: {
                                        oneofKind: "rawString",
                                        rawString: "Test Debug Print",
                                    },
                                },
                            },
                        },
                    },
                },
            },
        });
    });
});
