import 'package:flutter/material.dart';

import 'proto_out/widgets.pb.dart';
import 'expression_parser.dart';

class PduiExpression {
  PBExpression pbExpression;

  PduiExpression(this.pbExpression);

  Widget resolve() {
    return ExpressionParser.parse(pbExpression);
  }
}
