import { describe, expect, test } from "bun:test";
import { PDUINavigation } from "../../../core";

describe("PDUINavigation Test", () => {
    test("PDUINavigation toPB() Should return a PBNavigation", () => {
        const navigation: PDUINavigation = new PDUINavigation({
            expressionId: "about",
        });

        expect(navigation.identity).toBe("navigation");
        expect(navigation.body.navigation?.identity).toBe("navigation");
        expect(navigation.toPB()).toStrictEqual({ expressionId: "about" });
    });

    test("PDUINavigation toFnExpression should return a PBFnExpression", () => {
        const navigation: PDUINavigation = new PDUINavigation({
            expressionId: "about",
        });

        expect(navigation.identity).toBe("navigation");
        expect(navigation.body.navigation?.identity).toBe("navigation");
        expect(navigation.toFnExpression()).toStrictEqual({
            identity: "navigation",
            payload: {
                oneofKind: "navigation",
                navigation: { expressionId: "about" },
            },
        });
    });
});
