# PDUI Flutter

**[This is the mobile side library of the best SDUI Library!]**
[PDUI Github](https://github.com/victorpigmeo/PDUI)

To install this library on your Flutter app add this to you pubspec.yaml:
```yaml
dependencies:
    pdui_flutter: 0.0.1
```
Then run `flutter pub get` to download the library

### Getting started
You just need to use the `PduiScreen` widget wherever you want on your application.
If you want to use `PDUINavigation` you need to set the `navigatorKey` as indicated below.
If you want PDUI controlling youe whole app your `main.dart` will look like this:
```dart
import 'package:flutter/material.dart';
import 'package:pdui_flutter/core/pdui_context.dart';
import 'package:pdui_flutter/screens/pdui_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDUI Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      navigatorKey: PduiContext.navigatorKey, //Very important, without this your navigation won't work!!!
      home: PduiScreen(
        expressionId: "home", //Don't forget to register this route on your server
        useCache: false, // true if you want to use it, remember to have a redis cache running on the default port
      ),
    );
  }
}
```

You should be good to go, now build the most incredible screen on your server!!!
