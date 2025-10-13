import { PDUIWidget } from "../models/PDUIWidget";
import type { PBColumn, PBExpression } from "../proto-out/pdui-proto-out.ts";

export class PDUIColumn extends PDUIWidget {
    children: PDUIWidget[];

    constructor({ key, children }: { key?: string; children: PDUIWidget[] }) {
        super({
            key,
            identity: "column",
            payload: {
                oneofKind: "column",
                column: {
                    children: children.map((child) => child.toPB()),
                },
            },
        });

        this.children = children;
    }

    override toPB(): PBColumn {
        return {
            children: this.children.map((child) => child.toPB()),
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "column",
                column: {
                    children: this.children.map((child) =>
                        child.toExpression(),
                    ),
                },
            },
        };
    }
}
