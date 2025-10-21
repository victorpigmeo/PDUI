import { PDUIFn } from "../models/PDUIFn";
import type { PBFnExpression } from "../proto-out/pdui-proto-out";

export class PDUIGetFormData extends PDUIFn {
    formKey: string;

    constructor({ formKey }: { formKey: string }) {
        super({
            identity: "getFormData",
            params: {},
            body: {},
        });

        this.formKey = formKey;
    }

    override toPB() {
        return { formKey: this.formKey };
    }

    override toFnExpression(): PBFnExpression {
        return {
            identity: "getFormData",
            payload: {
                oneofKind: "getFormData",
                getFormData: { formKey: this.formKey },
            },
        };
    }
}
