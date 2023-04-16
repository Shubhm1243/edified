import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:universal_html/controller.dart';
import 'package:universal_html/html.dart' as html;
import 'package:universal_html/indexed_db.dart';
import 'package:universal_html/js.dart';
import 'package:universal_html/js_util.dart';
import 'package:universal_html/parsing.dart';
import 'package:universal_html/svg.dart';
import 'package:universal_html/web_audio.dart';
import 'package:universal_html/web_gl.dart';

class ArticleSummarizer {
  final String _apiKey;
  final String _modelId;
  final String _apiUrl = "https://api.openai.com/v1/engines/";
  ArticleSummarizer summarizer = ArticleSummarizer("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", "davinci");
  ArticleSummarizer(this._apiKey, this._modelId);
  html({required String data}){
  Future<String> summarizeArticle(String htmlContent) async {
    String textContent = html(data: htmlContent).text;
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

   {}



