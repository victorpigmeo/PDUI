import 'package:flutter/material.dart';

import '../core/pdui_expression_resolver.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_app_bar.dart';
import 'pdui_widget.dart';

class PduiScaffold extends PduiWidget {
  PBExpression pbScaffold;
  PduiScaffold(this.pbScaffold);

  @override
  Scaffold resolve() {
    return Scaffold(
      key: pbScaffold.key != "" ? Key(pbScaffold.key) : null,
      appBar: PduiAppBar(pbScaffold.scaffold.appBar).resolve(),
      body: PduiExpressionResolver.parse(pbScaffold.scaffold.body),
    );
  }
}
