import { PDUIWidget } from "../models/PDUIWidget";
import type { PBExpression } from "../proto-out/pdui-proto-out";
import { PDUIKeyboardType } from "./PDUIKeyboardType";
import type { PDUITextFormFieldDecoration } from "./PDUITextFormFieldDecoration";

export class PDUITextFormField extends PDUIWidget {
    formKey: string;
    keyboardType?: PDUIKeyboardType;
    decoration?: PDUITextFormFieldDecoration;
    obscureText?: boolean;
    notEmpty?: boolean;
    //TODO:
    // minLength?: number;
    maxLength?: number;
    maxLines?: number;
    //TODO:
    // validator: PDUIGenericFn;

    constructor({
        key,
        formKey,
        keyboardType,
        decoration,
        obscureText,
        notEmpty,
        // minLength,
        maxLength,
        maxLines,
    }: {
        key: string;
        formKey: string;
        keyboardType?: PDUIKeyboardType;
        decoration?: PDUITextFormFieldDecoration;
        obscureText?: boolean;
        notEmpty?: boolean;
        maxLength?: number;
        maxLines?: number;
    }) {
        //TODO: Validate things like: obscured fields can't be multiline...
        super({
            key,
            identity: "textFormField",
            payload: {
                oneofKind: "textFormField",
                textFormField: {
                    formKey: formKey,
                    keyboardType: keyboardType,
                    decoration: decoration ? decoration.toPB() : {},
                    obscureText: obscureText,
                    notEmpty: notEmpty,
                    maxLength: maxLength,
                    maxLines: maxLines,
                },
            },
        });

        this.formKey = formKey;
        this.keyboardType = keyboardType;
        this.decoration = decoration;
        this.obscureText = obscureText;
        this.notEmpty = notEmpty;
        this.maxLength = maxLength;
        this.maxLines = maxLines;
    }

    override toPB() {
        return {
            formKey: this.formKey,
            keyboardType: this.keyboardType,
            decoration: this.decoration ? this.decoration.toPB() : {},
            obscureText: this.obscureText,
            notEmpty: this.notEmpty,
            maxLength: this.maxLength,
            maxLines: this.maxLines,
        };
    }

    override toExpression(): PBExpression {
        return {
            key: this.key,
            identity: this.identity,
            payload: {
                oneofKind: "textFormField",
                textFormField: {
                    formKey: this.formKey,
                    keyboardType: this.keyboardType,
                    decoration: this.decoration ? this.decoration.toPB() : {},
                    obscureText: this.obscureText,
                    notEmpty: this.notEmpty,
                    maxLength: this.maxLength,
                    maxLines: this.maxLines,
                },
            },
        };
    }
}
