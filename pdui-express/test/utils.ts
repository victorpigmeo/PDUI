import { PDUIWidget } from "../models";
import { PDUIAppBar, PDUICenter, PDUIScaffold, PDUIText } from "../widgets";

export function toBinaryBuffer(responseBody: { [key: string]: number }) {
    const buffer = [];

    for (const [key, value] of Object.entries(responseBody)) {
        buffer.push(value);
    }

    return Uint8Array.from(buffer);
}

export function expressionById(expressionId: string): PDUIWidget {
    switch (expressionId) {
        case "home":
            return buildHomeTestExpression();
        default:
            return new PDUIText({ data: "Default text expression" });
    }
}

function buildHomeTestExpression(): PDUIWidget {
    return new PDUIScaffold({
        appBar: new PDUIAppBar({
            title: "AppBar Test",
            backgroundColor: "#FFFF0000",
        }),
        body: new PDUICenter({
            child: new PDUIText({ data: "Centered Text" }),
        }),
    });
}
