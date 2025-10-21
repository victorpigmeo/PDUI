import {
    PDUIDebugPrint,
    PDUIGenericFn,
    PDUIGetFormData,
    PDUIValidateForm,
} from "pdui-express/core";
import type { PDUIWidget } from "pdui-express/models";
import {
    PDUIAppBar,
    PDUICenter,
    PDUIColumn,
    PDUIElevatedButton,
    PDUIForm,
    PDUIKeyboardType,
    PDUIScaffold,
    PDUIText,
    PDUITextFormField,
    PDUITextFormFieldDecoration,
} from "pdui-express/widgets";

export class FormController {
    static build(): PDUIWidget {
        const form1Key: string = "form_1";
        const form2Key: string = "form_2";

        return new PDUIScaffold({
            appBar: new PDUIAppBar({
                title: "Form",
                backgroundColor: "#FF00FF00",
            }),
            body: new PDUICenter({
                child: new PDUIForm({
                    key: form1Key,
                    child: new PDUIColumn({
                        children: [
                            new PDUITextFormField({
                                formKey: form1Key,
                                key: "textField_1",
                                keyboardType: PDUIKeyboardType.NUMBER,
                                maxLength: 5,
                                decoration: new PDUITextFormFieldDecoration({
                                    labelText: "Number",
                                }),
                            }),
                            // new PDUITextFormField({
                            //     formKey: form1Key,
                            //     key: "textField_2",
                            //     keyboardType: PDUIKeyboardType.MULTILINE,
                            //     maxLines: 3,
                            //     decoration: new PDUITextFormFieldDecoration({
                            //         labelText: "Multiline",
                            //     }),
                            // }),
                            // new PDUITextFormField({
                            //     formKey: form1Key,
                            //     key: "textField_3",
                            //     keyboardType: PDUIKeyboardType.DATE_TIME,
                            //     decoration: new PDUITextFormFieldDecoration({
                            //         labelText: "DateTime",
                            //     }),
                            // }),
                            new PDUITextFormField({
                                formKey: form1Key,
                                key: "textField_4",
                                keyboardType: PDUIKeyboardType.EMAIL_ADDRESS,
                                decoration: new PDUITextFormFieldDecoration({
                                    labelText: "Email",
                                }),
                            }),
                            new PDUITextFormField({
                                formKey: form1Key,
                                key: "textField_5",
                                maxLength: 12,
                                decoration: new PDUITextFormFieldDecoration({
                                    labelText: "Username",
                                }),
                                // validator: () => {
                                //     const steps = [];
                                //
                                //     steps.push(
                                //         new PDUIFormFieldRegexCheck(
                                //             "^[a-zA-Z0-9_\-\.]+@[a-zA-Z]+\.[a-zA-Z]+$",
                                //         ),
                                //     );
                                //
                                //     return steps;
                                // },
                            }),
                            new PDUITextFormField({
                                formKey: form1Key,
                                key: "textField_6",
                                maxLength: 16,
                                decoration: new PDUITextFormFieldDecoration({
                                    labelText: "Password",
                                }),
                                obscureText: true,
                                // validator: () => {
                                //     const steps = [];
                                //
                                //     steps.push(
                                //         new PDUIFormFieldRegexCheck(
                                //             "^[a-zA-Z0-9@!#$%^&*()]+$",
                                //         ),
                                //     );
                                //
                                //     return steps;
                                // },
                            }),
                            // A form inside a form, this is supposed to work!
                            // new PDUIForm({
                            //     key: form2Key,
                            //     child: new PDUIColumn({
                            //         children: [
                            //             new PDUITextFormField({
                            //                 formKey: form2Key,
                            //                 key: "textFieldAnotherForm",
                            //                 decoration:
                            //                     new PDUITextFormFieldDecoration(
                            //                         {
                            //                             labelText:
                            //                                 "This is another form (Form 2)",
                            //                         },
                            //                     ),
                            //             }),
                            //         ],
                            //     }),
                            // }),

                            new PDUIElevatedButton({
                                child: new PDUIText({ data: "Submit" }),
                                onPressed: new PDUIGenericFn({
                                    body: () => {
                                        const steps = [];

                                        steps.push(
                                            new PDUIValidateForm({
                                                formKey: form1Key,
                                            }),
                                        );
                                        steps.push(
                                            new PDUIGetFormData({
                                                formKey: form1Key,
                                            }),
                                        );

                                        return steps;
                                    },
                                }),
                            }),
                            // new PDUIElevatedButton({
                            //     child: new PDUIText({ data: "Submit Form 2" }),
                            //     onPressed: new PDUIGenericFn({
                            //         body: () => {
                            //             const steps = [];
                            //
                            //             steps.push(
                            //                 new PDUIGetFormData({
                            //                     formKey: form2Key,
                            //                 }),
                            //             );
                            //
                            //             return steps;
                            //         },
                            //     }),
                            // }),
                        ],
                    }),
                }),
            }),
        });
    }
}
