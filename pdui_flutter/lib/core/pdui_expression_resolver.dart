import 'package:flutter/material.dart';
import 'package:pdui_flutter/widgets/pdui_form.dart';
import 'package:pdui_flutter/widgets/pdui_text_form_field.dart';

import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_debug_print.dart';
import 'pdui_generic_fn.dart';
import '../widgets/pdui_center.dart';
import '../widgets/pdui_column.dart';
import '../widgets/pdui_elevated_button.dart';
import '../widgets/pdui_scaffold.dart';
import '../widgets/pdui_text.dart';
import 'pdui_get_form_data.dart';
import 'pdui_navigation.dart';
import 'pdui_pop_navigation.dart';
import 'pdui_validate_form.dart';

//TODO: Maybe use strategy pattern?
class PduiExpressionResolver {
  static parse(PBExpression pbExpression) {
    switch (pbExpression.identity) {
      case "scaffold":
        return PduiScaffold(pbExpression).resolve();
      case "center":
        return PduiCenter(pbExpression).resolve();
      case "column":
        return PduiColumn(pbExpression).resolve();
      case "text":
        return PduiText(pbExpression).resolve();
      case "elevatedButton":
        return PduiElevatedButton(pbExpression).resolve();
      case "form":
        return PduiForm(pbExpression).resolve();
      case "textFormField":
        return PduiTextFormField(pbExpression).resolve();
      default:
        throw Exception(
          "Don't know how to create Widget '${pbExpression.identity}'",
        );
    }
  }
}

class PduiFnExpressionResolver {
  static parse(PBFnExpression pbFnExpression) {
    switch (pbFnExpression.identity) {
      case "genericFn":
        return PduiGenericFn(pbFnExpression).resolve();
      case "debugPrint":
        PduiDebugPrint(pbFnExpression.debugPrint).resolve();
        break;
      case "navigation":
        PduiNavigation(pbFnExpression.navigation).resolve();
        break;
      case "popNavigation":
        PduiPopNavigation(pbFnExpression.popNavigation).resolve();
        break;
      case "getFormData":
        return PduiGetFormData(pbFnExpression.getFormData).resolve();
      case "validateForm":
        return PduiValidateForm(pbFnExpression.validateForm).resolve();
      default:
        throw Exception(
          "Don´t know how to create fn '${pbFnExpression.identity}'",
        );
    }
  }
}
