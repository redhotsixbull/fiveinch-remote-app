import 'package:flutter/material.dart';

import 'bottomquick/quick_menu.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 100,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  color: Colors.greenAccent,
                  width: 200,
                  height: double.infinity,
                  child: Center(child: Text("안마의자 이미지 자리입니다")),
                ),
                Expanded(child: Container(
                  child: ListView(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(), Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                      Divider(),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Divider(),
                    ],
                  )
                ),flex: 1,),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            height: 40,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(Common().createRoute());
                });
              },
              child: Center(
                child: Icon(Icons.arrow_upward_sharp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
