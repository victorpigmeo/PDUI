import { describe, expect, test } from "bun:test";
import { PDUIGenericFn } from "../../../lib/core/PDUIGenericFn";
import type { PDUIFn } from "../../../lib/models/PDUIFn";
import { PDUIDebugPrint } from "../../../lib/core/PDUIDebugPrint";

describe("PDUIGenericFn Test", () => {
    test("[DebugPrint] toPB() Should return a PBGenericFn with a debugPrint in the body and no params", () => {
        const genericFn: PDUIGenericFn = new PDUIGenericFn({
            name: "myTestFn",
            params: {},
            body: () => {
                const steps: PDUIFn[] = [];

                steps.push(new PDUIDebugPrint("TestInsideFnBody"));
                return steps;
            },
        });

        expect(genericFn.identity).toBe("genericFn");
        expect(genericFn.toPB()).toStrictEqual({
            name: "myTestFn",
            params: {},
            body: {
                "1": {
                    identity: "debugPrint",
                    payload: {
                        oneofKind: "debugPrint",
                        debugPrint: {
                            expression: {
                                identity: "string",
                                key: undefined,
                                payload: {
                                    oneofKind: "rawString",
                                    rawString: "TestInsideFnBody",
                                },
                            },
                        },
                    },
                },
            },
        });
    });

    test("[DebugPrint] toFnExpression() Should return a PBGenericFn expression with two debugPrint in the body and no params", () => {
        const genericFn: PDUIGenericFn = new PDUIGenericFn({
            name: "myTestFn",
            params: {},
            body: () => {
                const steps: PDUIFn[] = [];

                steps.push(new PDUIDebugPrint("TestInsideFnBody"));
                steps.push(new PDUIDebugPrint("AnotherTestInsideFnBody"));
                return steps;
            },
        });

        expect(genericFn.identity).toBe("genericFn");
        expect(genericFn.toFnExpression()).toStrictEqual({
            identity: "genericFn",
            payload: {
                oneofKind: "genericFn",
                genericFn: {
                    name: "myTestFn",
                    params: {},
                    body: {
                        "1": {
                            identity: "debugPrint",
                            payload: {
                                oneofKind: "debugPrint",
                                debugPrint: {
                                    expression: {
                                        identity: "string",
                                        key: undefined,
                                        payload: {
                                            oneofKind: "rawString",
                                            rawString: "TestInsideFnBody",
                                        },
                                    },
                                },
                            },
                        },
                        "2": {
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
                                                "AnotherTestInsideFnBody",
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
});
