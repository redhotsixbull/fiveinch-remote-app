import 'package:five_inch_remote_app/finger_print.dart';
import 'package:five_inch_remote_app/pattern/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PatternTest());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FingerPrint(),
    );
  }
}
