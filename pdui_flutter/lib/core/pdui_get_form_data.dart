import 'package:flutter/material.dart';
import 'package:pdui_flutter/core/pdui_context.dart';

import '../models/pdui_fn.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import '../widgets/pdui_form.dart';

class PduiGetFormData extends PduiFn {
  PBGetFormData pbGetFormData;

  PduiGetFormData(this.pbGetFormData) : super("getFormData");

  @override
  resolve() {
    debugPrint(
      PduiFormController.formsInputValues[pbGetFormData.formKey].toString(),
    );

    //TODO: Remove this
    showDialog(
      context: PduiContext.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Form data"),
          content: Text(
            PduiFormController.formsInputValues[pbGetFormData.formKey]
                .toString(),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Ok"),
              onPressed: () =>
                  Navigator.of(PduiContext.navigatorKey.currentContext!).pop(),
            ),
          ],
        );
      },
    );

    return PduiFormController.formsInputValues[pbGetFormData.formKey];
  }
}
