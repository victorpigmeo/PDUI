import { PDUIFn } from "../models/PDUIFn";
import type { PBFnExpression } from "../proto-out/pdui-proto-out";

export class PDUIValidateForm extends PDUIFn {
    formKey: string;

    constructor({ formKey }: { formKey: string }) {
        super({
            identity: "validateForm",
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
            identity: "validateForm",
            payload: {
                oneofKind: "validateForm",
                validateForm: { formKey: this.formKey },
            },
        };
    }
}
