import type { PDUIFn } from "../models/PDUIFn";
import { PDUIWidget } from "../models/PDUIWidget";
import type { PBElevatedButton, PBExpression } from "./proto-out/widgets";

export class PDUIElevatedButton extends PDUIWidget {
    child: PDUIWidget;
    onPressed: PDUIFn;

    constructor({
        key,
        child,
        onPressed,
    }: { key?: string; child: PDUIWidget; onPressed: PDUIFn }) {
        super({
            key,
            identity: "elevatedButton",
            payload: {
                oneofKind: "elevatedButton",
                elevatedButton: {
                    child: child.toPB(),
                    onPressed: onPressed.toFnExpression(),
                },
            },
        });

        this.child = child;
        this.onPressed = onPressed;
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
                elevatedButton: {
                    child: this.child.toExpression(),
                    onPressed: this.onPressed.toFnExpression(),
                },
            },
        };
    }
}
