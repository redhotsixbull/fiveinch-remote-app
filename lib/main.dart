
import 'package:five_inch_remote_app/page/widgettest_page.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Fanthom',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff121212),
        scaffoldBackgroundColor: Color(0xff121212),
      ),
      home: WidgetTest(),
    );
  }

}
