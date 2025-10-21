import 'package:flutter/material.dart';

import '../models/pdui_fn.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import '../widgets/pdui_form.dart';
import 'pdui_context.dart';

class PduiValidateForm extends PduiFn {
  PBValidateForm pbValidateForm;

  PduiValidateForm(this.pbValidateForm) : super("validateForm");

  @override
  resolve() {
    if (PduiFormController.formsGlobalKeys[pbValidateForm.formKey] != null) {
      debugPrint(
        PduiFormController.formsGlobalKeys[pbValidateForm.formKey]!.currentState
            .toString(),
      );

      if (PduiFormController
          .formsGlobalKeys[pbValidateForm.formKey]!
          .currentState!
          .validate()) {
        return true;
      } else {
        throw Exception("Form not valid");
      }
    }
  }
}
