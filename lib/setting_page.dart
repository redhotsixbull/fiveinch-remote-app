import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              userAccount(),
              Container(
                color: Colors.red[100],
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.red[200],
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.red[300],
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.red[400],
                height: 200,
                width: double.infinity,
              ),  Container(
                color: Colors.red[500],
                height: 200,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userAccount(){
    return  InkWell(
      child: ListTile(
        onTap: (){
          print("123");
        },
      title: Text('One-line with trailing widget'),
      trailing: Container(
        width: 50,
          child: Row(children: [Text("test"),Icon(Icons.more_vert)],)),
      ),
    );
  }



}
