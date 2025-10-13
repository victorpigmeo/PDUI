import 'package:http/http.dart' as http;

class PDUIHttpClient {
  Future<http.Response> getExpression(
    String expressionId,
    String? cacheId,
  ) async {
    return http.get(
      Uri.http("192.168.18.28:3001", "/pdui/get-expression/$expressionId", {
        "cacheId": cacheId,
      }),
    );
  }
}
