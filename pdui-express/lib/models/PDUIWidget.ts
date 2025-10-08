import type {
    PBAppBar,
    PBCenter,
    PBColumn,
    PBElevatedButton,
    PBExpression,
    PBScaffold,
    PBText,
} from "../widgets/proto-out/widgets";

export abstract class PDUIWidget implements PBExpression {
    key?: string | undefined;
    identity: string;
    payload:
        | { oneofKind: "scaffold"; scaffold: PBScaffold }
        | { oneofKind: "center"; center: PBCenter }
        | { oneofKind: "text"; text: PBText }
        | { oneofKind: "appBar"; appBar: PBAppBar }
        | { oneofKind: "column"; column: PBColumn }
        | { oneofKind: "elevatedButton"; elevatedButton: PBElevatedButton }
        | { oneofKind: undefined };

    constructor({
        key,
        identity,
        payload,
    }: {
        key?: string;
        identity: string;
        payload:
            | { oneofKind: "scaffold"; scaffold: PBScaffold }
            | { oneofKind: "center"; center: PBCenter }
            | { oneofKind: "text"; text: PBText }
            | { oneofKind: "appBar"; appBar: PBAppBar }
            | { oneofKind: "column"; column: PBColumn }
            | { oneofKind: "elevatedButton"; elevatedButton: PBElevatedButton }
            | { oneofKind: undefined };
    }) {
        this.key = key;
        this.identity = identity;
        this.payload = payload;
    }

    abstract toPB(): any;
    abstract toExpression(): PBExpression;
}
