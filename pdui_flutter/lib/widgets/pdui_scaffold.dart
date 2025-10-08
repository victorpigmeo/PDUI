import 'package:flutter/material.dart';

import 'expression_parser.dart';
import 'pdui_app_bar.dart';
import 'pdui_widget.dart';
import 'proto_out/widgets.pb.dart';

class PduiScaffold extends PduiWidget {
  PBExpression pbScaffold;
  PduiScaffold(this.pbScaffold);

  @override
  Scaffold resolve() {
    return Scaffold(
      key: pbScaffold.key != "" ? Key(pbScaffold.key) : null,
      appBar: PduiAppBar(pbScaffold.scaffold.appBar).resolve(),
      body: ExpressionParser.parse(pbScaffold.scaffold.body),
    );
  }
}
