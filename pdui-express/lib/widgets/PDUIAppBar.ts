import { PDUIWidget } from "../models/PDUIWidget";
import type { PBAppBar, PBExpression } from "../proto-out/pdui-proto-out.ts";

export class PDUIAppBar extends PDUIWidget {
    title: string;
    //TODO: Docs
    //Format: FF000000 (alpha, r, g, b)
    backgroundColor: string;

    constructor({
        key,
        title,
        backgroundColor,
    }: { key?: string; title: string; backgroundColor: string }) {
        //TODO: Validate the backgroundColor format
        super({
            key,
            identity: "appBar",
            payload: {
                oneofKind: "appBar",
                appBar: {
                    title: title,
                    backgroundColor: backgroundColor,
                },
            },
        });

        this.title = title;
        this.backgroundColor = backgroundColor;
    }

    override toPB(): PBAppBar {
        return { title: this.title, backgroundColor: this.backgroundColor };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "appBar",
                appBar: {
                    title: this.title,
                    backgroundColor: this.backgroundColor,
                },
            },
        };
    }
}
