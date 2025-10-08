import { PDUIWidget } from "../models/PDUIWidget";
import { PBScaffold, type PBExpression } from "./proto-out/widgets";

export class PDUIScaffold extends PDUIWidget {
    appBar: PDUIWidget;
    body: PDUIWidget;

    constructor({
        key,
        appBar,
        body,
    }: { key?: string; appBar: PDUIWidget; body: PDUIWidget }) {
        super({
            key,
            identity: "scaffold",
            payload: {
                oneofKind: "scaffold",
                scaffold: { appBar: appBar.toPB(), body: body.toPB() },
            },
        });

        this.appBar = appBar;
        this.body = body;
    }

    override toPB(): PBScaffold {
        return {
            appBar: this.appBar.toPB(),
            body: this.body.toPB(),
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "scaffold",
                scaffold: {
                    appBar: this.appBar.toExpression(),
                    body: this.body.toExpression(),
                },
            },
        };
    }
}
