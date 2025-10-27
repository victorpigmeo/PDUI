import { describe, expect, test } from "bun:test";
import {
    PDUIKeyboardType,
    PDUITextFormField,
    PDUITextFormFieldDecoration,
} from "../../../widgets";

describe("PDUITextFormField tests", () => {
    test("PDUITextFormField with all options", () => {
        const textFormField: PDUITextFormField = new PDUITextFormField({
            formKey: "formKey",
            maxLength: 10,
            key: "formField_1",
            keyboardType: PDUIKeyboardType.NUMBER,
            notEmpty: true,
            obscureText: true,
            maxLines: 5,
            decoration: new PDUITextFormFieldDecoration({
                labelText: "Text field 1",
            }),
        });

        expect(textFormField.identity).toBe("textFormField");
        expect(textFormField.key).toBe("formField_1");
        expect(textFormField.toPB()).toStrictEqual({
            maxLines: 5,
            formKey: "formKey",
            maxLength: 10,
            keyboardType: PDUIKeyboardType.NUMBER,
            notEmpty: true,
            obscureText: true,
            decoration: { labelText: "Text field 1" },
        });

        expect(textFormField.toExpression()).toStrictEqual({
            identity: "textFormField",
            key: "formField_1",
            payload: {
                oneofKind: "textFormField",
                textFormField: {
                    maxLines: 5,
                    formKey: "formKey",
                    maxLength: 10,
                    keyboardType: PDUIKeyboardType.NUMBER,
                    notEmpty: true,
                    obscureText: true,
                    decoration: { labelText: "Text field 1" },
                },
            },
        });
    });

    test("PDUITextFormField with only required fields", () => {
        const textFormField: PDUITextFormField = new PDUITextFormField({
            formKey: "formKey",
            key: "formField_1",
        });

        expect(textFormField.identity).toBe("textFormField");
        expect(textFormField.key).toBe("formField_1");
        expect(textFormField.toPB()).toStrictEqual({
            maxLines: undefined,
            formKey: "formKey",
            maxLength: undefined,
            keyboardType: undefined,
            notEmpty: undefined,
            obscureText: undefined,
            decoration: {},
        });

        expect(textFormField.toExpression()).toStrictEqual({
            key: "formField_1",
            identity: "textFormField",
            payload: {
                oneofKind: "textFormField",
                textFormField: {
                    maxLines: undefined,
                    formKey: "formKey",
                    maxLength: undefined,
                    keyboardType: undefined,
                    notEmpty: undefined,
                    obscureText: undefined,
                    decoration: {},
                },
            },
        });
    });
});
