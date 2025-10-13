import 'package:flutter/material.dart';

import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_debug_print.dart';
import 'pdui_generic_fn.dart';
import '../widgets/pdui_center.dart';
import '../widgets/pdui_column.dart';
import '../widgets/pdui_elevated_button.dart';
import '../widgets/pdui_scaffold.dart';
import '../widgets/pdui_text.dart';

//TODO: Maybe use strategy pattern?
class PduiExpressionParser {
  static Widget parse(PBExpression pbExpression) {
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
      default:
        return Text("ERROR: Widget not found");
    }
  }
}

class PduiFnExpressionParser {
  static parse(PBFnExpression pbFnExpression) {
    switch (pbFnExpression.identity) {
      case "genericFn":
        return PduiGenericFn(pbFnExpression).resolve();
      case "debugPrint":
        PduiDebugPrint(pbFnExpression.debugPrint).resolve();
        break;
      default:
        throw Error();
    }
  }
}
