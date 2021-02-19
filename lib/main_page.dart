//import 'package:flutter/cupertino.dart';
import 'package:five_inch_remote_app/theme/button_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'common/common.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isBasic = false;

  @override
  Widget build(BuildContext context) {
    double widthV = MediaQuery.of(context).size.width;
    double heightV = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              powerButton,
              logo,
              userSet(),
              SizedBox(
                height: 20,
              ),
              isBasic ? mainSector(heightV) : easyMode(heightV,widthV),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            common.pagePushRoute(context,"quickMenu");
          });
        },
        child: Container(
            height: 55,
            width: double.infinity,
            color: Color(0xff272727),
            child: Center(
                child: Icon(
              Icons.arrow_upward_rounded,
              size: 40,
              color: Colors.white,
            ))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget powerButton = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xffff453a),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: Center(
              child: Icon(
            Icons.bluetooth,
            size: 40,
            color: Colors.white,
          ))),
    ],
  );

  Widget logo = Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    color: Colors.grey,
    height: 50,
    width: 112,
    child: Center(
      child: Text(
        'COSMO',
        style: TextStyle(fontSize: 30),
      ),
    ),
  );

  Widget userSet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            '게스트 님',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              _buildSmallIconCard(Icons.star),
              SizedBox(width: 10.0),
              _buildSmallIconCard(Icons.star),
              SizedBox(width: 10.0),
              _buildSmallIconCard(Icons.star),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildSmallIconCard(IconData icon) {
    return Container(
      height: 50,
      width: 50,
      color: Color(0xFF272727),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Widget mainSector(double heightV) {
    return Container(
      width: double.infinity,
      height: heightV - 264,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-4, 0),
            child: Container(
              width: 355,
              height: 459,
              child: Image.asset("images/img_chair.jpg"),
            ),
          ),
          Positioned(
            right: 20,
            child: Container(
              width: 150,
              height: heightV - 244,
              child: _categoryList(),
            ),
          )
        ],
      ),
    );
  }

  Widget easyMode(double heightV,double widthV) {
    return Container(
        width: double.infinity,
        height: heightV - 264,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: (heightV - 264) * 2 / 3,
              child: _easyModeCategoryList((heightV - 264) * 2 / 3,widthV),
            ),
            Container(
                width: double.infinity,
                height: (heightV - 264) / 3,
                child: _easyController()),
          ],
        ));
  }

  Widget _easyController() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _easyControlButton("images/ico_weightlessness.svg","OFF"),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _easyControlButton("images/ico_pause.svg","일시정지"),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _easyControlBodyAngle("images/ico_bodyangle_up.svg", "전신각도"),
          ),
        ),
      ],
    );
  }

  Widget _easyControlButton(String path, String title) {
    return Container(
      decoration: buttonDesign.easyModeButtonDesign(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              path,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

  Widget _easyControlBodyAngle(String path, String title) {
    return Container(
      decoration: buttonDesign.easyModeButtonDesign(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.keyboard_arrow_up_rounded,size: 30,),
            ),
            Column(
              children: [
                SvgPicture.asset(
                  path,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(title),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.keyboard_arrow_down_rounded,size:30,),
            ),
          ],
        ),
      ),
    );
  }

  Widget _easyModeCategoryList(double heightV, double widthV){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _easyModeCategoryCardColumn(heightV,widthV),
        _easyModeCategoryCardColumn(heightV,widthV),
        _easyModeCategoryCardColumn(heightV,widthV),
        _easyModeCategoryCardColumn(heightV,widthV),
        _easyModeCategoryCardColumn(heightV,widthV),
        _easyModeCategoryCardColumn(heightV,widthV),

      ],
    );
  }

  Widget _easyModeCategoryCardColumn(double heightV, double widthV){
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Container(
        width: widthV/2,
        height: heightV/2,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: _easyModeCategoryCard()
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: _easyModeCategoryCard()
            ),
          ],
        ),
      ),
    );
  }

  Widget _easyModeCategoryCard(){
    return Container(
      decoration: buttonDesign.easyModeButtonDesign(),
      child: Center(
        child: Text("추후 디자인 예정"),
      ),
    );
  }

  Widget _categoryList() {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        _categoryCard("images/ico_brain.svg", "헬스케어"),
        _categoryCard("images/ico_brain.svg", "헬스케어"),
        _categoryCard("images/ico_brain.svg", "헬스케어"),
        _categoryCard("images/ico_brain.svg", "헬스케어"),
      ],
    );
  }

  Widget _categoryCard(String svgPath, String label) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF272727),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          width: 150,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "images/ico_brain.svg",
                color: Color(0xFF6991ff),
              ),
              Text(label),
            ],
          )),
    );
  }
}
