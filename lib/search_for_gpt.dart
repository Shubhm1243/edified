import 'eddy/eddy.summarizer.dart';
import 'package:flutter/material.dart';

class SearchForGpt extends StatefulWidget {

  static String id = 'search_for_gpt';

  void main() async {

    String apiKey = "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";
    String modelId = "davinci";
    ArticleSummarizer summarizer = ArticleSummarizer(apiKey, modelId);
    String htmlContent = "<html><body><h1>Article title</h1><p>Article content goes here...</p></body></html>";
    String summary = await summarizer.summarizeArticle(htmlContent);
    print(summary);
  }

  @override
  State<SearchForGpt> createState() => _SearchForGptState();
}

class _SearchForGptState extends State<SearchForGpt> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


