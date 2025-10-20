import 'package:flutter/material.dart';

import 'pdui_expression_parser.dart';
import '../proto_out/pdui-proto-out.pb.dart';

class PduiExpression {
  PBExpression pbExpression;

  PduiExpression(this.pbExpression);

  Widget resolve() {
    return PduiExpressionResolver.parse(pbExpression);
  }
}
