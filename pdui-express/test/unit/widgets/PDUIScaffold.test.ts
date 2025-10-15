import { describe, expect, test } from "bun:test";
import {
    PDUIAppBar,
    PDUICenter,
    PDUIScaffold,
    PDUIText,
} from "../../../widgets";

describe("PDUIScaffold test", () => {
    test("PDUIScaffold with a PDUIText as child", () => {
        const appBar: PDUIAppBar = new PDUIAppBar({
            key: "appBar_1",
            title: "My app title",
            backgroundColor: "#FF000000",
        });

        const text: PDUIText = new PDUIText({
            key: "text_1",
            data: "Text only scaffold",
        });

        const center: PDUICenter = new PDUICenter({
            key: "center_1",
            child: text,
        });

        const scaffold: PDUIScaffold = new PDUIScaffold({
            key: "scaffold_1",
            appBar: appBar,
            body: center,
        });

        expect(scaffold.identity).toBe("scaffold");
        expect(scaffold.key).toBe("scaffold_1");
        expect(scaffold.body).toStrictEqual(center);

        expect(scaffold.toPB()).toStrictEqual({
            appBar: { title: "My app title", backgroundColor: "#FF000000" },
            body: {
                child: {
                    data: "Text only scaffold",
                },
            },
        });

        expect(scaffold.toExpression()).toStrictEqual({
            key: "scaffold_1",
            identity: "scaffold",
            payload: {
                oneofKind: "scaffold",
                scaffold: {
                    appBar: {
                        identity: "appBar",
                        key: "appBar_1",
                        payload: {
                            oneofKind: "appBar",
                            appBar: {
                                title: "My app title",
                                backgroundColor: "#FF000000",
                            },
                        },
                    },
                    body: {
                        identity: "center",
                        key: "center_1",
                        payload: {
                            oneofKind: "center",
                            center: {
                                child: {
                                    identity: "text",
                                    key: "text_1",
                                    payload: {
                                        oneofKind: "text",
                                        text: { data: "Text only scaffold" },
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
