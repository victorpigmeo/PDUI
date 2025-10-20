import 'package:flutter/material.dart';

import '../core/pdui_expression_parser.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_widget.dart';

class PduiCenter extends PduiWidget {
  PBExpression pbCenter;

  PduiCenter(this.pbCenter);

  @override
  Center resolve() {
    return Center(
      key: pbCenter.key != "" ? Key(pbCenter.key) : null,
      child: PduiExpressionResolver.parse(pbCenter.center.child),
    );
  }
}
