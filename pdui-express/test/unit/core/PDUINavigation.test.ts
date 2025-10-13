import { describe, expect, test } from "bun:test";
import { PDUIGenericFn, PDUINavigation } from "../../../core";

describe("PDUINavigation Test", () => {
    test("Navigation toPB() Should return a PBNavigation", () => {
        const navigation: PDUINavigation = new PDUINavigation({
            expressionId: "about",
        });

        expect(navigation.identity).toBe("navigation");
        expect(navigation.body.navigation?.identity).toBe("navigation");
        expect(navigation.toPB()).toStrictEqual({ expressionId: "about" });
    });
});
