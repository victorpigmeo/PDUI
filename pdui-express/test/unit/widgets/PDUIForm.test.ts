import { describe, expect, test } from "bun:test";
import { PDUIForm } from "../../../lib/widgets/PDUIForm";
import {
    PDUIColumn,
    PDUIElevatedButton,
    PDUIText,
    PDUITextFormField,
} from "../../../widgets";
import { PDUIDebugPrint } from "../../../core";

describe("PDUIForm tests", () => {
    test("PDUIForm with a text field and a button", () => {
        const formKey = "form_1";

        const form: PDUIForm = new PDUIForm({
            key: formKey,
            child: new PDUIColumn({
                children: [
                    new PDUITextFormField({
                        key: "textForm_1",
                        formKey: formKey,
                    }),
                    new PDUIElevatedButton({
                        child: new PDUIText({ data: "Press me!" }),
                        onPressed: new PDUIDebugPrint("Test"),
                    }),
                ],
            }),
        });

        expect(form.identity).toBe("form");
        expect(form.key).toBe(formKey);
        expect(form.toPB()).toStrictEqual({
            child: {
                children: [
                    {
                        formKey: formKey,
                        decoration: {},
                        keyboardType: undefined,
                        maxLength: undefined,
                        maxLines: undefined,
                        notEmpty: undefined,
                        obscureText: undefined,
                    },
                    {
                        child: { data: "Press me!" },
                        onPressed: {
                            expression: {
                                identity: "string",
                                payload: {
                                    oneofKind: "rawString",
                                    rawString: "Test",
                                },
                            },
                        },
                    },
                ],
            },
        });

        expect(form.toExpression()).toStrictEqual({
            key: formKey,
            identity: "form",
            payload: {
                oneofKind: "form",
                form: {
                    child: {
                        identity: "column",
                        key: undefined,
                        payload: {
                            oneofKind: "column",
                            column: {
                                children: [
                                    {
                                        identity: "textFormField",
                                        key: "textForm_1",
                                        payload: {
                                            oneofKind: "textFormField",
                                            textFormField: {
                                                formKey: formKey,
                                                decoration: {},
                                                keyboardType: undefined,
                                                maxLength: undefined,
                                                maxLines: undefined,
                                                notEmpty: undefined,
                                                obscureText: undefined,
                                            },
                                        },
                                    },
                                    {
                                        identity: "elevatedButton",
                                        key: undefined,
                                        payload: {
                                            oneofKind: "elevatedButton",
                                            elevatedButton: {
                                                child: {
                                                    key: undefined,
                                                    identity: "text",
                                                    payload: {
                                                        oneofKind: "text",
                                                        text: {
                                                            data: "Press me!",
                                                        },
                                                    },
                                                },
                                                onPressed: {
                                                    identity: "debugPrint",
                                                    payload: {
                                                        oneofKind: "debugPrint",
                                                        debugPrint: {
                                                            expression: {
                                                                key: undefined,
                                                                identity:
                                                                    "string",
                                                                payload: {
                                                                    oneofKind:
                                                                        "rawString",
                                                                    rawString:
                                                                        "Test",
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                ],
                            },
                        },
                    },
                },
            },
        });
    });
});
