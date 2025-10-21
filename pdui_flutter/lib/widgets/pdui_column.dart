import 'package:flutter/material.dart';

import '../core/pdui_expression_resolver.dart';
import '../proto_out/pdui-proto-out.pb.dart';

class PduiColumn {
  PBExpression pbColumn;

  PduiColumn(this.pbColumn);

  Column resolve() {
    List<Widget> children = List.empty(growable: true);

    for (var child in pbColumn.column.children) {
      children.add(PduiExpressionResolver.parse(child));
    }

    return Column(
      key: pbColumn.key != "" ? Key(pbColumn.key) : null,
      children: children,
    );
  }
}
