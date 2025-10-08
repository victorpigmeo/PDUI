import 'package:flutter/material.dart';

import 'proto_out/widgets.pb.dart';
import 'expression_parser.dart';

class PduiColumn {
  PBExpression pbColumn;

  PduiColumn(this.pbColumn);

  Column resolve() {
    List<Widget> children = List.empty(growable: true);

    for (var child in pbColumn.column.children) {
      children.add(ExpressionParser.parse(child));
    }

    return Column(
      key: pbColumn.key != "" ? Key(pbColumn.key) : null,
      children: children,
    );
  }
}
