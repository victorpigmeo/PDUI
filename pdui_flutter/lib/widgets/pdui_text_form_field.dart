import 'package:flutter/material.dart';
import 'package:pdui_flutter/widgets/pdui_form.dart';

import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_widget.dart';

class PduiTextFormField extends PduiWidget {
  PBExpression pduiTextFormField;

  PduiTextFormField(this.pduiTextFormField);

  TextInputType _resolveTextInputType(PBKeyboardType pbKeyboardType) {
    switch (pbKeyboardType) {
      case PBKeyboardType.EMAIL_ADDRESS:
        return TextInputType.emailAddress;
      case PBKeyboardType.NUMBER:
        return TextInputType.number;
      case PBKeyboardType.DATE_TIME:
        return TextInputType.datetime;
      case PBKeyboardType.MULTILINE:
        return TextInputType.multiline;
      default:
        return TextInputType.text;
    }
  }

  @override
  Widget resolve() {
    String inputKey = pduiTextFormField.key;
    String formKey = pduiTextFormField.textFormField.formKey;
    bool obscureText = pduiTextFormField.textFormField.obscureText;

    var maxLength = pduiTextFormField.textFormField.maxLength > 0
        ? pduiTextFormField.textFormField.maxLength
        : null;

    var maxLines = !obscureText && pduiTextFormField.textFormField.maxLines > 0
        ? pduiTextFormField.textFormField.maxLines
        : 1;

    PduiFormController.formsInputValues[formKey]?[inputKey] = "";

    TextFormField textFormField = TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      // minLength: pduiTextFormField.textFormField.minLength,
      obscureText: obscureText,
      keyboardType: _resolveTextInputType(
        pduiTextFormField.textFormField.keyboardType,
      ),
      decoration: InputDecoration(
        labelText: pduiTextFormField.textFormField.decoration.labelText,
      ),
      onChanged: (value) {
        PduiFormController.formsInputValues[formKey]?[inputKey] = value;
      },
      validator: (value) {
        if (value == null || value == "") {
          return "This field is required";
        } else {
          return null;
        }
      },
    );

    return textFormField;
  }
}
