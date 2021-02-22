import 'package:five_inch_remote_app/theme/button_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuickMenu extends StatefulWidget {
  @override
  _QuickMenuState createState() => _QuickMenuState();
}

class _QuickMenuState extends State<QuickMenu> {
  @override
  Widget build(BuildContext context) {
    double widthV = MediaQuery.of(context).size.width;
    double heightV = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Container(
              child: Text("옵션"),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 2,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 2,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Text("각도 길이"),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                  _easyControlBodyAngle("", "123", heightV),
                ],
              ),
            ),
            Container(
              child: Text("온열"),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _easyControlBodyAngle(String path, String title, double heightV) {
    return Container(
      width: 100,
      decoration: buttonDesign.easyModeButtonDesign(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Icon(
                Icons.keyboard_arrow_up,
                size: 20,
              ),
            ),
            Column(
              children: [
                heightV > 200
                    ? SvgPicture.asset(
                        path,
                        color: Colors.white,
                      )
                    : Container(),
                heightV > 200
                    ? SizedBox(
                        height: 10,
                      )
                    : Container(),
                Text(title),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
