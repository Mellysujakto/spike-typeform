import 'package:flutter/cupertino.dart';
import 'package:research_typeform/constant_strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MySurveyWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        // initialUrl: 'https://www.youtube.com/watch?v=MXTjtZMBSmU&t=162s',
        initialUrl: ConstantString.entity == 'amaan'
            ? ConstantString.amaanSurvey
            : ConstantString.pxSurvey,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
