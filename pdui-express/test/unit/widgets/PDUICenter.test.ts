import { describe, expect, test } from "bun:test";
import {
    PDUICenter,
    PDUIColumn,
    PDUIElevatedButton,
    PDUIText,
} from "../../../widgets";
import { PDUIDebugPrint } from "../../../core";

describe("PDUICenter test", () => {
    test("PDUICenter with a PDUIText as child", () => {
        const text: PDUIText = new PDUIText({
            key: "text_1",
            data: "Center this!",
        });
        const center: PDUICenter = new PDUICenter({
            key: "center_1",
            child: text,
        });

        expect(center.identity).toBe("center");
        expect(center.key).toBe("center_1");
        expect(center.child).toStrictEqual(text);

        expect(center.toPB()).toStrictEqual({
            child: {
                data: "Center this!",
            },
        });

        expect(center.toExpression()).toStrictEqual({
            identity: "center",
            key: "center_1",
            payload: {
                oneofKind: "center",
                center: {
                    child: {
                        key: "text_1",
                        identity: "text",
                        payload: {
                            oneofKind: "text",
                            text: { data: "Center this!" },
                        },
                    },
                },
            },
        });
    });

    test("PDUICenter with a PDUIElevatedButton as child", () => {
        const elevatedButton = new PDUIElevatedButton({
            key: "button_1",
            child: new PDUIText({ key: "button_text_1", data: "Press me" }),
            onPressed: new PDUIDebugPrint("Test Debug Print"),
        });

        const center: PDUICenter = new PDUICenter({
            key: "center_1",
            child: elevatedButton,
        });

        expect(center.identity).toBe("center");
        expect(center.key).toBe("center_1");
        expect(center.child).toStrictEqual(elevatedButton);

        expect(center.toPB()).toStrictEqual({
            child: {
                child: { data: "Press me" },
                onPressed: {
                    expression: {
                        identity: "string",
                        payload: {
                            oneofKind: "rawString",
                            rawString: "Test Debug Print",
                        },
                    },
                },
            },
        });

        expect(center.toExpression()).toStrictEqual({
            identity: "center",
            key: "center_1",
            payload: {
                oneofKind: "center",
                center: {
                    child: {
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
                                        text: { data: "Press me" },
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
                                                    rawString:
                                                        "Test Debug Print",
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        });
    });

    test("PDUICenter with a Column and multiple childs", () => {
        const text: PDUIText = new PDUIText({
            key: "text_1",
            data: "Center this!",
        });

        const elevatedButton = new PDUIElevatedButton({
            key: "button_1",
            child: new PDUIText({ key: "button_text_1", data: "Press me" }),
            onPressed: new PDUIDebugPrint("Test Debug Print"),
        });

        const column: PDUIColumn = new PDUIColumn({
            key: "column_1",
            children: [text, elevatedButton],
        });

        const center: PDUICenter = new PDUICenter({
            key: "center_1",
            child: column,
        });

        expect(center.identity).toBe("center");
        expect(center.key).toBe("center_1");
        expect(center.child).toStrictEqual(column);

        expect(center.toPB()).toStrictEqual({
            child: {
                children: [
                    { data: "Center this!" },
                    {
                        child: { data: "Press me" },
                        onPressed: {
                            expression: {
                                identity: "string",
                                payload: {
                                    oneofKind: "rawString",
                                    rawString: "Test Debug Print",
                                },
                            },
                        },
                    },
                ],
            },
        });

        expect(center.toExpression()).toStrictEqual({
            identity: "center",
            key: "center_1",
            payload: {
                oneofKind: "center",
                center: {
                    child: {
                        identity: "column",
                        key: "column_1",
                        payload: {
                            oneofKind: "column",
                            column: {
                                children: [
                                    {
                                        key: "text_1",
                                        identity: "text",
                                        payload: {
                                            oneofKind: "text",
                                            text: { data: "Center this!" },
                                        },
                                    },
                                    {
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
                                                                identity:
                                                                    "string",
                                                                key: undefined,
                                                                payload: {
                                                                    oneofKind:
                                                                        "rawString",
                                                                    rawString:
                                                                        "Test Debug Print",
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                ],
                            },
                        },
                    },
                },
            },
        });
    });
});
