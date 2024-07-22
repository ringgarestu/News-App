import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class ArticleWebView extends StatelessWidget{
  static const routeName = '/article_web';

  final String url;

  const ArticleWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build (BuildContext context){
    final controller = WebViewController()..loadRequest(Uri.parse(url));
  return Scaffold(
    appBar: AppBar(
      title: Text('News App'),
    ),
    body: WebViewWidget(
      controller: controller,
    )
  );
  }
}