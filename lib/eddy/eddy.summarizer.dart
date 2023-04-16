import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

class ArticleSummarizer {
  final String _apiKey;
  final String _modelId;
  final String _apiUrl = "https://api.openai.com/v1/engines/";

  ArticleSummarizer(this._apiKey, this._modelId);

  Future<String> summarizeArticle(String htmlContent) async {
    String? textContent = parse(htmlContent).text;
    String apiUrl = "$_apiUrl$_modelId/completions";
    Map data = {
      "prompt": "Summarize the following article: $textContent",
      "temperature": 0.5,
      "max_tokens": 50
    };
    String body = json.encode(data);

    final response = await http.post(Uri.parse(apiUrl),
        headers: {"Authorization": "Bearer $_apiKey"}, body: body);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse['choices'][0]['text'];
    } else {
      throw Exception('Failed to generate summary.');
    }
    }
}