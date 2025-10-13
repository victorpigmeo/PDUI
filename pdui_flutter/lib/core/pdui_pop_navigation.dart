import 'package:flutter/material.dart';
import 'package:pdui_flutter/core/pdui_context.dart';
import 'package:pdui_flutter/proto_out/pdui-proto-out.pb.dart';

import '../models/pdui_fn.dart';

class PduiPopNavigation extends PduiFn {
  PBPopNavigation pbPopNavigation;

  PduiPopNavigation(this.pbPopNavigation) : super("popNavigation");

  @override
  resolve() {
    Navigator.of(PduiContext.navigatorKey.currentContext!).pop();
  }
}
