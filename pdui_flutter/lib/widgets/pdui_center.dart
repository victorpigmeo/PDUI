import 'package:flutter/material.dart';

import '../core/pdui_expression_parser.dart';
import 'pdui_widget.dart';
import 'proto_out/widgets.pb.dart';

class PduiCenter extends PduiWidget {
  PBExpression pbCenter;

  PduiCenter(this.pbCenter);

  @override
  Center resolve() {
    return Center(
      key: pbCenter.key != "" ? Key(pbCenter.key) : null,
      child: PduiExpressionParser.parse(pbCenter.center.child),
    );
  }
}
