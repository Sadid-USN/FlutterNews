import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleViews extends StatefulWidget {
  final String blogUrl;

  ArticleViews({this.blogUrl});

  @override
  _ArticleViewsState createState() => _ArticleViewsState();
}

class _ArticleViewsState extends State<ArticleViews> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter'),
            Text(
              'News',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        actions: <Widget>[
        Opacity(opacity: 0,),
        Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Icon(Icons.save)),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl: widget.blogUrl,
          onWebViewCreated: ((WebViewController webViewController) {
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
