import { PDUIFn } from "../models/PDUIFn";
import { PDUIWidget } from "../models/PDUIWidget";
import {
    PBFnExpression,
    type PBDebugPrint,
    type PBExpression,
} from "../proto-out/pdui-proto-out.ts";

export class PDUIDebugPrint extends PDUIFn implements PBDebugPrint {
    expression: PBExpression;

    constructor(expression: any) {
        super({
            identity: "debugPrint",
            name: "debugPrint",
            params: {},
            body: {},
        });
        switch (typeof expression) {
            case "number":
            case "string":
                this.expression = {
                    identity: "string",
                    payload: {
                        oneofKind: "rawString",
                        rawString: expression.toString(),
                    },
                };
                break;

            case "object":
                const widget = expression as PDUIWidget;
                this.expression = widget.toExpression();
                break;
            default:
                throw Error("Wrong type used on PDUIDebugPrint");
        }
    }

    override toPB(): PBDebugPrint {
        return { expression: this.expression };
    }

    override toFnExpression(): PBFnExpression {
        return {
            identity: "debugPrint",
            payload: {
                oneofKind: "debugPrint",
                debugPrint: {
                    expression: {
                        identity: this.expression?.identity,
                        key: this.expression?.key,
                        payload: this.expression.payload,
                    },
                },
            },
        };
    }
}
