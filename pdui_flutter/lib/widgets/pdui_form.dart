import 'package:flutter/widgets.dart';
import 'package:pdui_flutter/core/pdui_expression_resolver.dart';

import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_widget.dart';

class PduiForm extends PduiWidget {
  PBExpression pbForm;

  PduiForm(this.pbForm);

  @override
  Widget resolve() {
    final _formKey = GlobalKey<FormState>();

    Form form = Form(
      key: _formKey,
      child: PduiExpressionResolver.parse(pbForm.form.child),
    );

    PduiFormController.formsGlobalKeys[pbForm.key] = _formKey;

    PduiFormController.formsInputValues[pbForm.key] = Map<String, dynamic>();

    return form;
  }
}

class PduiFormController {
  static Map<String, GlobalKey<FormState>> formsGlobalKeys = Map();
  static Map<String, Map<String, dynamic>> formsInputValues = Map();
}
