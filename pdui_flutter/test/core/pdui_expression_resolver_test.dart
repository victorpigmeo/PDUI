import 'package:flutter/material.dart';
import 'package:pdui_flutter/core/pdui_expression_parser.dart';
import 'package:pdui_flutter/proto_out/pdui-proto-out.pb.dart';
import 'package:test/test.dart';

void main() {
  test("Should throw an exception on unknown expression identity", () {
    PBExpression unknownExpression = PBExpression(identity: "unknown");

    expect(() {
      PduiExpressionResolver.parse(unknownExpression);
    }, throwsA(isA<Exception>()));
  });

  test("Should resolve a PBScaffold to a Scaffold widget", () {
    PBExpression pbScaffold = PBExpression(
      identity: "scaffold",
      scaffold: PBScaffold(
        appBar: PBExpression(
          identity: "appBar",
          appBar: PBAppBar(title: "AppBar"),
        ),
        body: PBExpression(
          identity: "text",
          text: PBText(data: "Scaffold body"),
        ),
      ),
    );

    Scaffold scaffold = PduiExpressionResolver.parse(pbScaffold);

    expect(scaffold.runtimeType, Scaffold);
  });

  test("Should resolve a PBCenter to a Center widget", () {
    PBExpression pbCenter = PBExpression(
      identity: "center",
      center: PBCenter(
        child: PBExpression(
          identity: "text",
          text: PBText(data: "Center this!"),
        ),
      ),
    );

    Center center = PduiExpressionResolver.parse(pbCenter);

    expect(center.runtimeType, Center);
  });

  test("Should resolve a PBColumn to a Column widget", () {
    PBExpression pbColumn = PBExpression(
      identity: "column",
      column: PBColumn(
        children: [
          PBExpression(
            identity: "text",
            text: PBText(data: "Center this!"),
          ),
        ],
      ),
    );

    Column column = PduiExpressionResolver.parse(pbColumn);

    expect(column.runtimeType, Column);
  });

  test("Should resolve a PBText to a Text widget", () {
    PBExpression pbText = PBExpression(
      identity: "text",
      text: PBText(data: "Center this!"),
    );

    Text text = PduiExpressionResolver.parse(pbText);

    expect(text.runtimeType, Text);
  });

  test("Should resolve a PBElevatedButton to a ElevatedButton widget", () {
    PBExpression pbElevatedButton = PBExpression(
      identity: "elevatedButton",
      elevatedButton: PBElevatedButton(
        child: PBExpression(
          identity: "text",
          text: PBText(data: "Center this!"),
        ),
      ),
    );

    ElevatedButton elevatedButton = PduiExpressionResolver.parse(
      pbElevatedButton,
    );

    expect(elevatedButton.runtimeType, ElevatedButton);
  });
}
