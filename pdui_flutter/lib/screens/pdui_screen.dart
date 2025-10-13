import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';

import '../http_client/pdui_http_client.dart';
import '../proto_out/pdui-proto-out.pb.dart';
import '../core/pdui_expression.dart';
import 'pdui_loading_screen.dart';

class PduiScreen extends StatefulWidget {
  const PduiScreen({
    super.key,
    required this.expressionId,
    required this.useCache,
  });

  final String expressionId;
  final bool useCache;

  @override
  State<PduiScreen> createState() => _PduiScreenState();
}

class _PduiScreenState extends State<PduiScreen> {
  final secureStorage = FlutterSecureStorage();
  late Widget screen = PduiLoadingScreen(useCache: widget.useCache);

  @override
  void initState() {
    super.initState();
    fetchExpression();
  }

  void fetchExpression() async {
    String? clientCacheId = await getClientCacheId();
    PduiHttpClient httpClient = PduiHttpClient();

    httpClient
        .getExpression(widget.expressionId, clientCacheId)
        .then((response) async {
          if (widget.useCache) {
            print("CACHED");

            buildAndRenderExpressionCached(response, clientCacheId);
          } else {
            print("NOT CACHED");

            buildAndRenderExpression(jsonDecode(response.body)["payload"]);
          }
        })
        .catchError((error) => throw error);
  }

  Future<String?> getClientCacheId() async {
    return await secureStorage.read(key: widget.expressionId).then((
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
    final bool cacheAlive = jsonDecode(response.body)["cacheAlive"];

    if (cacheAlive) {
      print("CacheAlive building from storage");
      await secureStorage.read(key: widget.expressionId).then((rawCachedData) {
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
        key: widget.expressionId,
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
