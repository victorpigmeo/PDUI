import type {
    PBAppBar,
    PBCenter,
    PBColumn,
    PBElevatedButton,
    PBExpression,
    PBScaffold,
    PBText,
} from "./proto-out/widgets";

export class PDUIExpression implements PBExpression {
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

    toProto(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: this.payload,
        };
    }
}
