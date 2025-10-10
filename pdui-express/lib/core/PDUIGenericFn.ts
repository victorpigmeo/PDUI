import { PDUIFn } from "../models/PDUIFn";
import { type PBFn, type PBFnExpression } from "../widgets/proto-out/widgets";
import { parseBody } from "./PDUIFnBodyParser";
import { parseParams } from "./PDUIFnParamParser";

export class PDUIGenericFn extends PDUIFn {
    constructor({
        name,
        params,
        body,
    }: {
        name?: string;
        params: { [key: string]: number | string };
        body: () => PDUIFn[];
    }) {
        super({
            identity: "generic",
            name,
            params: parseParams(name, params),
            body: parseBody(name, body),
        });
    }

    override toPB(): PBFn {
        return { name: this.name, params: this.params, body: this.body };
    }

    override toFnExpression(): PBFnExpression {
        console.log(this.params);
        return {
            identity: "genericFn",
            payload: {
                oneofKind: "generic",
                generic: {
                    name: this.name,
                    params: this.params,
                    body: this.body,
                },
            },
        };
    }
}
