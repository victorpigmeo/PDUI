import { describe, expect, test } from "bun:test";
import { PDUIAppBar } from "../../../widgets";

describe("PDUIAppBar test", () => {
    test("PDUIAppBar toPB() should return a PBAppBar", () => {
        const appBar: PDUIAppBar = new PDUIAppBar({
            key: "appBar_1",
            title: "My app title",
            backgroundColor: "#FF000000",
        });

        expect(appBar.identity).toBe("appBar");
        expect(appBar.key).toBe("appBar_1");
        expect(appBar.payload).toStrictEqual({
            oneofKind: "appBar",
            appBar: { title: "My app title", backgroundColor: "#FF000000" },
        });
        expect(appBar.toPB()).toStrictEqual({
            title: "My app title",
            backgroundColor: "#FF000000",
        });
    });

    test("PDUIAppBar toExpression() should return a PBExpression", () => {
        const appBar: PDUIAppBar = new PDUIAppBar({
            key: "appBar_1",
            title: "My app title",
            backgroundColor: "#FF000000",
        });

        expect(appBar.identity).toBe("appBar");
        expect(appBar.key).toBe("appBar_1");
        expect(appBar.payload).toStrictEqual({
            oneofKind: "appBar",
            appBar: { title: "My app title", backgroundColor: "#FF000000" },
        });
        expect(appBar.toExpression()).toStrictEqual({
            identity: "appBar",
            key: "appBar_1",
            payload: {
                oneofKind: "appBar",
                appBar: { title: "My app title", backgroundColor: "#FF000000" },
            },
        });
    });
});
