import 'package:flutter/material.dart';
import 'package:pdui_flutter/core/pdui_context.dart';
import 'package:pdui_flutter/screens/pdui_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      navigatorKey: PduiContext.navigatorKey,
      home: PduiScreen(expressionId: "home", useCache: true),
    );
  }
}
