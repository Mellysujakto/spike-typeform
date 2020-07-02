import 'package:flutter/material.dart';
import 'package:research_typeform/my_some_page.dart';
import 'package:research_typeform/my_survey_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/survey': (context) => MySurveyWebView(),
        '/somepage': (context) => MySomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('To SomePage and Show MoodMeter'),
                onPressed: () {
                  Navigator.pushNamed(context, '/somepage');
                }),
            RaisedButton(
                child: Text('To Survey'),
                onPressed: () {
                  Navigator.pushNamed(context, '/survey');
                }),
          ],
        ),
      ),
    );
  }
}
