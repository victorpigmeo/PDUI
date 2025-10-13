import { describe, expect, test } from "bun:test";
import { PDUIDebugPrint } from "../../../core";
import { PDUIText } from "../../../widgets";

describe("PDUIDebugPrint Test", () => {
    test("[Number] toPB() Should return a PBDebugPrint", () => {
        const pduiDebugPrint = new PDUIDebugPrint(37);

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toPB()).toStrictEqual({
            expression: {
                identity: "string",
                payload: {
                    oneofKind: "rawString",
                    rawString: "37",
                },
            },
        });
    });

    test("[Number] toFnExpression() Should return a PBExpression", () => {
        const pduiDebugPrint = new PDUIDebugPrint(37);

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toFnExpression()).toStrictEqual({
            identity: "debugPrint",
            payload: {
                oneofKind: "debugPrint",
                debugPrint: {
                    expression: {
                        key: undefined,
                        identity: "string",
                        payload: {
                            oneofKind: "rawString",
                            rawString: "37",
                        },
                    },
                },
            },
        });
    });

    test("[String] toPB() Should return a PBDebugPrint", () => {
        const pduiDebugPrint = new PDUIDebugPrint("string expr");

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toPB()).toStrictEqual({
            expression: {
                identity: "string",
                payload: {
                    oneofKind: "rawString",
                    rawString: "string expr",
                },
            },
        });
    });

    test("[String] toFnExpression() Should return a PBExpression", () => {
        const pduiDebugPrint = new PDUIDebugPrint("string expr");

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toFnExpression()).toStrictEqual({
            identity: "debugPrint",
            payload: {
                oneofKind: "debugPrint",
                debugPrint: {
                    expression: {
                        key: undefined,
                        identity: "string",
                        payload: {
                            oneofKind: "rawString",
                            rawString: "string expr",
                        },
                    },
                },
            },
        });
    });

    test("[Widget] toPb() Should return a PBDebugPrint", () => {
        const textWidget: PDUIText = new PDUIText({ data: "Text content" });
        const pduiDebugPrint: PDUIDebugPrint = new PDUIDebugPrint(textWidget);

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toPB()).toStrictEqual({
            expression: {
                identity: "text",
                key: undefined,
                payload: {
                    oneofKind: "text",
                    text: { data: "Text content" },
                },
            },
        });
    });

    test("[Widget] toFnExpression() Should return a PBExpression", () => {
        const textWidget: PDUIText = new PDUIText({ data: "Text content" });
        const pduiDebugPrint: PDUIDebugPrint = new PDUIDebugPrint(textWidget);

        expect(pduiDebugPrint.identity).toBe("debugPrint");
        expect(pduiDebugPrint.toFnExpression()).toStrictEqual({
            identity: "debugPrint",
            payload: {
                oneofKind: "debugPrint",
                debugPrint: {
                    expression: {
                        identity: "text",
                        key: undefined,
                        payload: {
                            oneofKind: "text",
                            text: { data: "Text content" },
                        },
                    },
                },
            },
        });
    });
});
