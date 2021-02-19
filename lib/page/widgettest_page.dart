import 'package:five_inch_remote_app/common/common.dart';
import 'package:flutter/material.dart';

class WidgetTest extends StatefulWidget {
  @override
  _WidgetTestState createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: common.test(context),
    );
  }
}
