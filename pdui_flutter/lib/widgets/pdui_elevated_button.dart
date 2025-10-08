import 'package:flutter/material.dart';

import 'proto_out/widgets.pb.dart';
import 'expression_parser.dart';

class PduiElevatedButton {
  PBExpression pbElevatedButton;

  PduiElevatedButton(this.pbElevatedButton);

  ElevatedButton resolve() {
    return ElevatedButton(
      key: pbElevatedButton.key != "" ? Key(pbElevatedButton.key) : null,
      onPressed: () {},
      child: ExpressionParser.parse(pbElevatedButton.elevatedButton.child),
    );
  }
}
