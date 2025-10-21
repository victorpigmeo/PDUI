import 'package:flutter/material.dart';

import '../core/pdui_expression_resolver.dart';
import '../proto_out/pdui-proto-out.pb.dart';

class PduiElevatedButton {
  PBExpression pbElevatedButton;

  PduiElevatedButton(this.pbElevatedButton);

  ElevatedButton resolve() {
    return ElevatedButton(
      key: pbElevatedButton.key != "" ? Key(pbElevatedButton.key) : null,
      onPressed: () {
        PduiFnExpressionResolver.parse(
          pbElevatedButton.elevatedButton.onPressed,
        );
      },
      child: PduiExpressionResolver.parse(
        pbElevatedButton.elevatedButton.child,
      ),
    );
  }
}
