import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:research_typeform/constant_strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyMoodMeterWebView {
  void showMoodMeter(context) {
    Navigator.of(context).push(
      PageRouteBuilder(
          opaque: false,
          pageBuilder: (BuildContext context, _, __) {
            return Scaffold(
              backgroundColor: Colors.white70,
              body: SimpleDialog(
                contentPadding: EdgeInsets.all(0),
                backgroundColor: Colors.transparent,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: WebView(
                            initialUrl: ConstantString.pxMoodMeter,
                            javascriptMode: JavascriptMode.unrestricted,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close),
                              backgroundColor: Colors.purple[300],
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
