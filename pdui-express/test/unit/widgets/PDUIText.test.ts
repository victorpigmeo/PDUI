import { describe, expect, test } from "bun:test";
import { PDUIText } from "../../../widgets";

describe("PDUIText test", () => {
    test("PDUIText with text should run toPB() and toExpression()", () => {
        const text = new PDUIText({
            key: "text_1",
            data: "This is a text widget",
        });

        expect(text.identity).toBe("text");
        expect(text.key).toBe("text_1");
        expect(text.toPB()).toStrictEqual({ data: "This is a text widget" });
        expect(text.toExpression()).toStrictEqual({
            identity: "text",
            key: "text_1",
            payload: {
                oneofKind: "text",
                text: { data: "This is a text widget" },
            },
        });
    });
});
