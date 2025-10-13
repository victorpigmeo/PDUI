import { PDUIWidget } from "../models/PDUIWidget";
import type { PBExpression, PBText } from "../proto-out/pdui-proto-out.ts";

export class PDUIText extends PDUIWidget {
    data: string;

    constructor({ key, data }: { key?: string; data: string }) {
        super({
            key,
            identity: "text",
            payload: {
                oneofKind: "text",
                text: { data: data },
            },
        });

        this.data = data;
    }
    override toPB(): PBText {
        return {
            data: this.data,
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "text",
                text: { data: this.data },
            },
        };
    }
}
