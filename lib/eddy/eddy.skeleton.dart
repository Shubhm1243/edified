import 'package:http/http.dart' as http;
import 'dart:convert';

class GPTChatbot {
  final String _apiKey;
  final String _modelId;
  final String _apiUrl = "https://api.openai.com/v1/engines/";
  GPTChatbot chatbot = GPTChatbot("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", "davinci");
  GPTChatbot(this._apiKey, this._modelId);

  Future<String> generateResponse(String prompt) async {
    String apiUrl = "$_apiUrl$_modelId/completions";
    Map data = {"prompt": prompt, "temperature": 0.5, "max_tokens": 50};
    String body = json.encode(data);

    final response = await http.post(Uri.parse(apiUrl),
        headers: {"Authorization": "Bearer $_apiKey"}, body: body);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse['choices'][0]['text'];
    } else {
      throw Exception('Failed to generate response.');
    }
    }
}