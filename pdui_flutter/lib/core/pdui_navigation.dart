import 'package:flutter/material.dart';
import 'package:pdui_flutter/screens/pdui_screen.dart';

import '../models/pdui_fn.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui.dart';
import 'pdui_context.dart';

class PduiNavigation extends PduiFn {
  PBNavigation pbNavigation;

  PduiNavigation(this.pbNavigation) : super("navigation");

  @override
  resolve() {
    Navigator.of(PduiContext.navigatorKey.currentContext!).push(
      MaterialPageRoute(
        builder: (context) => PduiScreen(
          expressionId: pbNavigation.expressionId,
          useCache: Pdui.useCache,
        ),
      ),
    );
  }
}
