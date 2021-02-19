import 'package:flutter/material.dart';

class Common {
  pagePushReplaceRoute(BuildContext context,String pageName){
    Navigator.of(context).pushReplacementNamed("/$pageName");
  }

  pagePushRoute(BuildContext context,String pageName){
    Navigator.of(context).pushNamed("/$pageName");
  }

  showDialog(BuildContext context){

  }

  test(BuildContext context){
    return ListView.separated(
      itemCount: 25,
      separatorBuilder: (context, int index) => Container(width: double.infinity,height: 3,color: Colors.red,),
      itemBuilder: (context, int index) {
        return ListTile(
          title: Text('item $index'),
        );
      },
    );
  }
}

final common = Common();