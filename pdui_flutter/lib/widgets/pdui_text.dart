import 'package:flutter/material.dart';

import '../proto_out/pdui-proto-out.pb.dart';
import 'pdui_widget.dart';

class PduiText extends PduiWidget {
  PBExpression pbText;

  PduiText(this.pbText);

  @override
  Text resolve() {
    return Text(
      pbText.text.data,
      key: pbText.key != "" ? Key(pbText.key) : null,
    );
  }
}
