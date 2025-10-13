import { describe, expect, test } from "bun:test";
import { PDUIDebugPrint, PDUIGenericFn } from "../../../core";
import type { PDUIFn } from "../../../lib/models/PDUIFn";

describe("PDUIFnBodyParser Test", () => {
    test("[GenericFn] parseBody() Should parse the PDUIDebugPrint on the fn body", () => {
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
        expect(genericFn.name).toBe("myTestFn");
        expect(genericFn.body).toStrictEqual({
            "1": {
                identity: "debugPrint",
                payload: {
                    oneofKind: "debugPrint",
                    debugPrint: {
                        expression: {
                            key: undefined,
                            identity: "string",
                            payload: {
                                oneofKind: "rawString",
                                rawString: "TestInsideFnBody",
                            },
                        },
                    },
                },
            },
        });
    });
});
