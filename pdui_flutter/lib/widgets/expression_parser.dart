import 'package:flutter/material.dart';
import 'package:pdui_flutter/widgets/pdui_column.dart';
import 'package:pdui_flutter/widgets/pdui_elevated_button.dart';

import 'pdui_center.dart';
import 'pdui_scaffold.dart';
import 'pdui_text.dart';
import 'proto_out/widgets.pb.dart';

class ExpressionParser {
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
