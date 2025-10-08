import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';

import '../http_client/pdui_http_client.dart';
import 'pdui_expression.dart';
import 'proto_out/widgets.pb.dart';

class PDUIHome extends StatefulWidget {
  const PDUIHome({
    super.key,
    required this.title,
    required this.rootExpressionId,
    required this.useCache,
  });

  final String title;
  final String rootExpressionId;
  final bool useCache;

  @override
  State<PDUIHome> createState() => _PDUIHomeState();
}

class _PDUIHomeState extends State<PDUIHome> {
  final secureStorage = FlutterSecureStorage();

  Widget screen = Scaffold(
    appBar: AppBar(title: Text("Loading")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator()],
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    fetchHomeComponent();
  }

  void fetchHomeComponent() async {
    var pduiHttpClient = PDUIHttpClient();
    String? clientCacheId = await getClientCacheId();

    pduiHttpClient
        .getExpression(widget.rootExpressionId, clientCacheId)
        .then((response) async {
          if (widget.useCache) {
            print("CACHED");

            buildAndRenderExpressionCached(response, clientCacheId);
          } else {
            print("NOT CACHED");

            buildAndRenderExpression(jsonDecode(response.body)["payload"]);
          }
        })
        .catchError((error) => print(error.toString()));
  }

  Future<String?> getClientCacheId() async {
    return await secureStorage.read(key: widget.rootExpressionId).then((
      rawCachedData,
    ) {
      if (rawCachedData != null) {
        final Map<String, dynamic> cachedData = jsonDecode(rawCachedData);

        return cachedData["cacheId"];
      } else {
        return null;
      }
    });
  }

  void buildAndRenderExpression(Map<String, dynamic> expressionBytes) {
    var buffer = List<int>.empty(growable: true);
    expressionBytes.forEach((k, v) {
      buffer.add(v);
    });

    setState(() {
      screen = PduiExpression(PBExpression.fromBuffer(buffer)).resolve();
    });
  }

  void buildAndRenderExpressionCached(
    Response response,
    String? clientCacheId,
  ) async {
    print(jsonDecode(response.body));
    final bool cacheAlive = jsonDecode(response.body)["cacheAlive"];

    if (cacheAlive) {
      print("CacheAlive building from storage");
      await secureStorage.read(key: widget.rootExpressionId).then((
        rawCachedData,
      ) {
        if (rawCachedData != null) {
          final Map<String, dynamic> cachedData = jsonDecode(rawCachedData);

          buildAndRenderExpression(cachedData["expressionBytes"]);
        }
      });
    } else {
      //TODO: LOG This
      print("CacheNotAlive, build and save");
      var expressionBytes = jsonDecode(response.body)["payload"];
      final String serverCacheId = jsonDecode(response.body)["cacheId"];

      await secureStorage.write(
        key: widget.rootExpressionId,
        value: jsonEncode({
          "cacheId": serverCacheId,
          "expressionBytes": expressionBytes,
        }),
      );

      buildAndRenderExpression(expressionBytes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return screen;
  }
}
