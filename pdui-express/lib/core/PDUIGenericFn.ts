import { PDUIFn } from "../models/PDUIFn";
import { type PBFn, type PBFnExpression } from "../proto-out/pdui-proto-out.ts";
import { parseBody } from "./PDUIFnBodyParser";
import { parseParams } from "./PDUIFnParamParser";

export class PDUIGenericFn extends PDUIFn {
    constructor({
        name,
        params,
        body,
    }: {
        name?: string;
        params: { [key: string]: number | string | boolean };
        body: () => PDUIFn[];
    }) {
        super({
            identity: "genericFn",
            name,
            params: parseParams(name, params),
            body: parseBody(name, body),
        });
    }

    override toPB(): PBFn {
        return { name: this.name, params: this.params, body: this.body };
    }

    override toFnExpression(): PBFnExpression {
        return {
            identity: "genericFn",
            payload: {
                oneofKind: "genericFn",
                genericFn: {
                    name: this.name,
                    params: this.params,
                    body: this.body,
                },
            },
        };
    }
}
