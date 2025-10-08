import { PDUIWidget } from "../models/PDUIWidget";
import type { PBAppBar, PBExpression } from "./proto-out/widgets";

export class PDUIAppBar extends PDUIWidget {
    title: string;
    backgroundColor: string;

    constructor({
        key,
        title,
        backgroundColor,
    }: { key?: string; title: string; backgroundColor: string }) {
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
