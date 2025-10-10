import 'package:pdui_flutter/core/pdui_expression_parser.dart';
import 'package:pdui_flutter/models/pdui_fn.dart';
import 'package:pdui_flutter/widgets/proto_out/widgets.pb.dart';

class PduiGenericFn extends PduiFn {
  PBFnExpression pbFnExpression;

  PduiGenericFn(this.pbFnExpression) : super("generic");

  @override
  resolve() {
    pbFnExpression.generic.body.forEach((key, body) {
      PduiFnExpressionParser.parse(body);
    });
  }
}
