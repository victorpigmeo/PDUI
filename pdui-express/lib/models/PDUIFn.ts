import type {
    PBFn,
    PBFnExpression,
    PBFnParameter,
} from "../widgets/proto-out/widgets";

export abstract class PDUIFn implements PBFn {
    name?: string | undefined;
    params: { [key: string]: PBFnParameter };
    body: { [key: string]: PBFnExpression };
    identity: string;

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

    abstract toPB(): any;
    abstract toFnExpression(): PBFnExpression;
}
