import { describe, expect, test } from "bun:test";
import { PDUIGenericFn } from "../../../core";

describe("PDUIFnParamParser Test", () => {
    test("[GenericFn] parseParams() Should parse the PDUIGenericFn params", () => {
        const genericFn: PDUIGenericFn = new PDUIGenericFn({
            name: "myTestFn",
            params: {
                stringParam: "testStringParam",
                intParam: 37,
                floatParam: 37.1,
                booleanParam: true,
            },
            body: () => [],
        });

        expect(genericFn.identity).toBe("genericFn");
        expect(genericFn.name).toBe("myTestFn");
        expect(genericFn.params).toStrictEqual({
            "1": {
                name: "stringParam",
                type: 0,
                value: {
                    oneofKind: "stringValue",
                    stringValue: "testStringParam",
                },
            },
            "2": {
                name: "intParam",
                type: 1,
                value: { oneofKind: "intValue", intValue: 37 },
            },
            "3": {
                name: "floatParam",
                type: 2,
                value: { oneofKind: "floatValue", floatValue: 37.1 },
            },
            "4": {
                name: "booleanParam",
                type: 3,
                value: { oneofKind: "booleanValue", booleanValue: true },
            },
        });
    });
});
