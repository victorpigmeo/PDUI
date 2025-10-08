import 'package:flutter/material.dart';

import 'expression_parser.dart';
import 'pdui_widget.dart';
import 'proto_out/widgets.pb.dart';

class PduiCenter extends PduiWidget {
  PBExpression pbCenter;

  PduiCenter(this.pbCenter);

  @override
  Center resolve() {
    return Center(
      key: pbCenter.key != "" ? Key(pbCenter.key) : null,
      child: ExpressionParser.parse(pbCenter.center.child),
    );
  }
}
