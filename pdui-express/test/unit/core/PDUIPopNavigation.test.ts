import { describe, expect, test } from "bun:test";
import { PDUIPopNavigation } from "../../../core";

describe("PDUIPopNavigation Test", () => {
    //TODO: Add return data
    test("PDUIPopNavigation toPB() should return an empty object", () => {
        const popNavigation: PDUIPopNavigation = new PDUIPopNavigation();

        expect(popNavigation.identity).toBe("popNavigation");
        expect(popNavigation.name).toBe(undefined);
        expect(popNavigation.params).toStrictEqual({});
        expect(popNavigation.body).toStrictEqual({});
        expect(popNavigation.toPB()).toStrictEqual({});
    });

    //TODO: Add return data
    test("PDUIPopNavigation toFnExpression() should return a PBFnExpression", () => {
        const popNavigation: PDUIPopNavigation = new PDUIPopNavigation();

        expect(popNavigation.identity).toBe("popNavigation");
        expect(popNavigation.name).toBe(undefined);
        expect(popNavigation.params).toStrictEqual({});
        expect(popNavigation.body).toStrictEqual({});
        expect(popNavigation.toFnExpression()).toStrictEqual({
            identity: "popNavigation",
            payload: { oneofKind: "popNavigation", popNavigation: {} },
        });
    });
});
