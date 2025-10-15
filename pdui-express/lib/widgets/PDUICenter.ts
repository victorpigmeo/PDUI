import { PDUIWidget } from "../models/PDUIWidget";
import type { PBCenter, PBExpression } from "../proto-out/pdui-proto-out.ts";

export class PDUICenter extends PDUIWidget {
    child: PDUIWidget;

    constructor({ key, child }: { key?: string; child: PDUIWidget }) {
        super({
            key,
            identity: "center",
            payload: { oneofKind: "center", center: child.toPB() },
        });

        this.child = child;
    }

    override toPB(): PBCenter {
        return {
            child: this.child.toPB(),
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "center",
                center: { child: this.child.toExpression() },
            },
        };
    }
}
