import type { PBTextFormFieldDecoration } from "../proto-out/pdui-proto-out";

export class PDUITextFormFieldDecoration implements PBTextFormFieldDecoration {
    labelText?: string;

    constructor({ labelText }: { labelText?: string }) {
        this.labelText = labelText;
    }

    toPB() {
        return { labelText: this.labelText };
    }
}
