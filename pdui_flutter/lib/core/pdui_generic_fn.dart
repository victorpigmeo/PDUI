import '../models/pdui_fn.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_expression_parser.dart';

class PduiGenericFn extends PduiFn {
  PBFnExpression pbFnExpression;

  PduiGenericFn(this.pbFnExpression) : super("generic");

  @override
  resolve() {
    pbFnExpression.genericFn.body.forEach((key, body) {
      PduiFnExpressionParser.parse(body);
    });
  }
}
