import 'package:flutter/material.dart';

import 'pdui_widget.dart';
import 'proto_out/widgets.pb.dart';

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
