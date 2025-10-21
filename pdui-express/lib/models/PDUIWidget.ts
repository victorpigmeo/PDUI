import type {
    PBAppBar,
    PBCenter,
    PBColumn,
    PBElevatedButton,
    PBExpression,
    PBForm,
    PBScaffold,
    PBText,
    PBTextFormField,
} from "../proto-out/pdui-proto-out.ts";

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
        | { oneofKind: "form"; form: PBForm }
        | {
              oneofKind: "textFormField";
              textFormField: PBTextFormField;
          }
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
            | { oneofKind: "form"; form: PBForm }
            | {
                  oneofKind: "textFormField";
                  textFormField: PBTextFormField;
              }
            | { oneofKind: undefined };
    }) {
        this.key = key;
        this.identity = identity;
        this.payload = payload;
    }

    abstract toPB(): any;
    abstract toExpression(): PBExpression;
}
