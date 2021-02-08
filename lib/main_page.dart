import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double widthV = MediaQuery.of(context).size.width;
    double heightV = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              powerButton(),
              logo(),
              userSet(),
              SizedBox(
                height: 20,
              ),
              mainSector(heightV),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff272727),
            borderRadius: BorderRadius.only(
            ),
          ),
          child: Center(
              child: Icon(
                Icons.arrow_upward_rounded,
                size: 40,
                color: Colors.white,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget logo(){
    return Container(
      width: double.infinity,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            child: Container(
              color: Colors.grey,
              height: 50,
              width: 112,
              child: Text('COSMO'),
            ),
          ),
        ],
      ),
    );
  }

  Widget powerButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Container(
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
        ),
      ],
    );
  }

  Widget userSet(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            '게스트 님',
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  color: Color(0xFF272727),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  )),
              SizedBox(width: 5.0),
              Container(
                  height: 50,
                  width: 50,
                  color: Color(0xFF272727),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  )),
              SizedBox(width: 5.0),
              Container(
                  height: 50,
                  width: 50,
                  color: Color(0xFF272727),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  Widget mainSector(double heightV){
    return   Container(
      width: double.infinity,
      height: heightV - 264,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-7, 0),
            child: Container(
              width: 355,
              height:459,
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

  Widget _categoryList(){
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

  Widget _categoryCard(String svgPath, String title) {
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
              svgFile(svgPath),
              Text('Category'),
            ],
          )),
    );
  }

  Widget svgFile(String path){
    return SvgPicture.asset(
      "images/ico_brain.svg",color: Color(0xFF6991ff),
      semanticsLabel: "test",
    );
  }
}
