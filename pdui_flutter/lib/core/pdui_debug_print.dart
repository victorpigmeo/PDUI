import 'package:flutter/material.dart';

import '../models/pdui_fn.dart';
import '../proto_out/pdui-proto-out.pb.dart';

class PduiDebugPrint extends PduiFn {
  PBDebugPrint pbDebugPrint;

  PduiDebugPrint(this.pbDebugPrint) : super("debugPrint");

  @override
  resolve() {
    late String debugPrintBody;

    //TODO: Strategy?
    switch (pbDebugPrint.expression.identity) {
      case "scaffold":
        debugPrintBody = pbDebugPrint.expression.scaffold.toString();
        break;
      case "center":
        debugPrintBody = pbDebugPrint.expression.center.toString();
        break;
      case "column":
        debugPrintBody = pbDebugPrint.expression.column.toString();
        break;
      case "text":
        debugPrintBody = pbDebugPrint.expression.elevatedButton.toString();
        break;
      case "elevatedButton":
        debugPrintBody = pbDebugPrint.expression.elevatedButton.toString();
        break;
      case "string":
        debugPrintBody = pbDebugPrint.expression.rawString;
        break;
      default:
        debugPrintBody = "[ERROR] Payload not found by debugPrint";
    }

    debugPrint(debugPrintBody);
  }
}
