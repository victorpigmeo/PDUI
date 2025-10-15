import type {
    PBFn,
    PBFnExpression,
    PBFnParameter,
} from "../proto-out/pdui-proto-out.ts";

export abstract class PDUIFn implements PBFn {
    identity: string;
    name?: string | undefined;
    params: { [key: string]: PBFnParameter };
    body: { [key: string]: PBFnExpression };

    constructor({
        identity,
        name,
        params,
        body,
    }: {
        identity: string;
        name?: string;
        params: { [key: string]: PBFnParameter };
        body: { [key: string]: PBFnExpression };
    }) {
        this.identity = identity;
        this.name = name;
        this.params = params;
        this.body = body;
    }

    //TODO: Maybe we don't need this on Fns
    abstract toPB(): any;
    abstract toFnExpression(): PBFnExpression;
}
