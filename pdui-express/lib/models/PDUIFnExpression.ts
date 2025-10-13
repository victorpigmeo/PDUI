import type {
    PBDebugPrint,
    PBFn,
    PBFnExpression,
} from "../proto-out/pdui-proto-out.ts";

export abstract class PDUIFnExpression implements PBFnExpression {
    identity: string;
    payload:
        | { oneofKind: "generic"; generic: PBFn }
        | { oneofKind: "debugPrint"; debugPrint: PBDebugPrint }
        | { oneofKind: undefined };

    constructor({
        identity,
        payload,
    }: {
        identity: string;
        payload:
            | { oneofKind: "generic"; generic: PBFn }
            | { oneofKind: "debugPrint"; debugPrint: PBDebugPrint }
            | { oneofKind: undefined };
    }) {
        this.identity = identity;
        this.payload = payload;
    }

    abstract toPB(): any;
    abstract toExpression(): PBFnExpression;
}
