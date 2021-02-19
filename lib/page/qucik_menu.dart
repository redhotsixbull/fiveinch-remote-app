import 'package:flutter/material.dart';

class QuickMenu extends StatefulWidget {
  @override
  _QuickMenuState createState() => _QuickMenuState();
}

class _QuickMenuState extends State<QuickMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
          });
        },
        child: Container(
            height: 55,
            width: double.infinity,
            color: Color(0xff272727),
            child: Center(
                child: Icon(
                  Icons.arrow_downward,
                  size: 40,
                  color: Colors.white,
                ))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
