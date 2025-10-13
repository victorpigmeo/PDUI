import type {
    PBDebugPrint,
    PBFn,
    PBFnExpression,
    PBNavigation,
    PBPopNavigation,
} from "../proto-out/pdui-proto-out.ts";

export abstract class PDUIFnExpression implements PBFnExpression {
    identity: string;
    payload:
        | { oneofKind: "genericFn"; genericFn: PBFn }
        | { oneofKind: "debugPrint"; debugPrint: PBDebugPrint }
        | { oneofKind: "navigation"; navigation: PBNavigation }
        | { oneofKind: "popNavigation"; popNavigation: PBPopNavigation }
        | { oneofKind: undefined };

    constructor({
        identity,
        payload,
    }: {
        identity: string;
        payload:
            | { oneofKind: "genericFn"; genericFn: PBFn }
            | { oneofKind: "debugPrint"; debugPrint: PBDebugPrint }
            | { oneofKind: "navigation"; navigation: PBNavigation }
            | { oneofKind: "popNavigation"; popNavigation: PBPopNavigation }
            | { oneofKind: undefined };
    }) {
        this.identity = identity;
        this.payload = payload;
    }

    abstract toPB(): any;
    abstract toExpression(): PBFnExpression;
}
