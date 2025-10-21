import { PDUIWidget } from "../models/PDUIWidget";
import type { PBExpression } from "../proto-out/pdui-proto-out";

export class PDUIForm extends PDUIWidget {
    child: PDUIWidget;

    constructor({ key, child }: { key?: string; child: PDUIWidget }) {
        super({
            key,
            identity: "form",
            payload: {
                oneofKind: "form",
                form: { child: child.toPB() },
            },
        });

        this.child = child;
    }

    override toPB() {
        return { child: this.child.toPB() };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "form",
                form: {
                    child: this.child.toExpression(),
                },
            },
        };
    }
}
