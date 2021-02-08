import 'package:flutter/cupertino.dart';
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
}

final common = Common();