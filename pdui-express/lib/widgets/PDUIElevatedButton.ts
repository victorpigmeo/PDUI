import { PDUIWidget } from "../models/PDUIWidget";
import type { PBElevatedButton, PBExpression } from "./proto-out/widgets";

export class PDUIElevatedButton extends PDUIWidget {
    child: PDUIWidget;
    // onPressed:

    constructor({
        key,
        child,
        // onPressed,
    }: { key?: string; child: PDUIWidget }) {
        super({
            key,
            identity: "elevatedButton",
            payload: {
                oneofKind: "elevatedButton",
                elevatedButton: {
                    child: child.toPB(),
                    // onPressed: onPressed.parse(),
                },
            },
        });

        this.child = child;
    }

    override toPB(): PBElevatedButton {
        return {
            child: this.child.toPB(),
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "elevatedButton",
                elevatedButton: { child: this.child.toExpression() },
            },
        };
    }
}
