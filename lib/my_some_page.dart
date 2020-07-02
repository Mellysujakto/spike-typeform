import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:research_typeform/my_mood_meter_view.dart';

class MySomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      MyMoodMeterWebView().showMoodMeter(context);
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.purple[300],
          child: Center(
            child: Text('SomePage'),
          ),
        ),
      ),
    );
  }
}
