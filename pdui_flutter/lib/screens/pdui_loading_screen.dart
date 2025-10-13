import 'package:flutter/material.dart';

class PduiLoadingScreen extends StatelessWidget {
  const PduiLoadingScreen({super.key, required this.useCache});

  final bool useCache;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator()],
        ),
      ),
    );
  }
}
