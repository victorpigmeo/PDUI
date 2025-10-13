import 'package:flutter/material.dart';

import '../core/pdui_expression_parser.dart';
import '../proto_out/pdui-proto-out.pb.dart';

class PduiExpression {
  PBExpression pbExpression;

  PduiExpression(this.pbExpression);

  Widget resolve() {
    return PduiExpressionParser.parse(pbExpression);
  }
}
