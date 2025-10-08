import 'package:flutter/material.dart';

import 'pdui_widget.dart';
import 'proto_out/widgets.pb.dart';

class PduiAppBar extends PduiWidget {
  PBExpression pbAppBar;

  PduiAppBar(this.pbAppBar);

  @override
  AppBar resolve() {
    late Color backgroundColor;

    if (pbAppBar.appBar.backgroundColor != "") {
      String argbColor = pbAppBar.appBar.backgroundColor.replaceAll("#", "");
      backgroundColor = Color(int.parse(argbColor, radix: 16));
    }

    return AppBar(
      key: pbAppBar.key != "" ? Key(pbAppBar.key) : null,
      title: Text(pbAppBar.appBar.title),
      backgroundColor: backgroundColor,
    );
  }
}
