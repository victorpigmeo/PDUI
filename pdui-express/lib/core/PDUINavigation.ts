import { PDUIFn } from "../models/PDUIFn";
import type { PBFnExpression, PBNavigation } from "../proto-out/pdui-proto-out";

export class PDUINavigation extends PDUIFn {
    expressionId: string;

    constructor({ expressionId }: { expressionId: string }) {
        super({
            identity: "navigation",
            name: undefined,
            params: {},
            body: {
                navigation: {
                    identity: "navigation",
                    payload: {
                        oneofKind: "navigation",
                        navigation: { expressionId: expressionId },
                    },
                },
            },
        });

        this.expressionId = expressionId;
    }

    override toPB(): PBNavigation {
        return { expressionId: this.expressionId };
    }

    override toFnExpression(): PBFnExpression {
        return {
            identity: "navigation",
            payload: {
                oneofKind: "navigation",
                navigation: { expressionId: this.expressionId },
            },
        };
    }
}
