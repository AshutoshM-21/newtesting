import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nexaflow_flutter_sdk/src/models/page.dart' as nexaflow;

class NexaflowSDK {
  NexaflowSDK({required this.apiKey});

  final String apiKey;

  Future<nexaflow.Page> getPageById({
    required String websiteId,
    required String pageId,
  }) async {
    try {
      var url =
          "https://api.nexaflow.xyz/api/page/64d320462aed52cfe16ddde7?websiteId=64d3200e2aed52cfe16ddddf";

      var response = await http.get(
        Uri.parse(url),
        headers: {
          "Accept": "application/json",
          "x-api-key": apiKey,
        },
      );

      if (response.statusCode == 200) {
        return nexaflow.Page.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Error getting page");
      }
    } catch (error) {
      throw Exception("Failed to get page: $error");
    }
  }
}
