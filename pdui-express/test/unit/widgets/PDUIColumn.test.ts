import { describe, expect, test } from "bun:test";
import { PDUIColumn, PDUIText } from "../../../widgets";

describe("PDUIColumn Text", () => {
    test("PDUIColumn with a PDUIText as child", () => {
        const text: PDUIText = new PDUIText({
            key: "text_1",
            data: "Column Text!",
        });

        const column: PDUIColumn = new PDUIColumn({
            key: "column_1",
            children: [text],
        });

        expect(column.identity).toBe("column");
        expect(column.key).toBe("column_1");
        expect(column.children).toStrictEqual([text]);

        expect(column.toPB()).toStrictEqual({
            children: [{ data: "Column Text!" }],
        });

        expect(column.toExpression()).toStrictEqual({
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
                                text: { data: "Column Text!" },
                            },
                        },
                    ],
                },
            },
        });
    });

    test("PDUIColumn with multiple widgets", () => {
        const text: PDUIText = new PDUIText({
            key: "text_1",
            data: "Column Text!",
        });

        const text2: PDUIText = new PDUIText({
            key: "text_2",
            data: "Column Text 2!",
        });

        const column: PDUIColumn = new PDUIColumn({
            key: "column_1",
            children: [text, text2],
        });

        expect(column.identity).toBe("column");
        expect(column.key).toBe("column_1");
        expect(column.children).toStrictEqual([text, text2]);

        expect(column.toPB()).toStrictEqual({
            children: [{ data: "Column Text!" }, { data: "Column Text 2!" }],
        });

        expect(column.toExpression()).toStrictEqual({
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
                                text: { data: "Column Text!" },
                            },
                        },
                        {
                            key: "text_2",
                            identity: "text",
                            payload: {
                                oneofKind: "text",
                                text: { data: "Column Text 2!" },
                            },
                        },
                    ],
                },
            },
        });
    });
});
