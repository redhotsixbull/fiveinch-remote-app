import 'package:flutter/cupertino.dart';

class ButtonDesign{
  mainPageMassageButton(double radius, Color color){
   return BoxDecoration(
     borderRadius: BorderRadius.circular(radius),
     color: color,
   );
  }

  easyModeButtonDesign(){
    return BoxDecoration(
      color: Color(0xFF1e1e1e),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    );
  }
}
final buttonDesign = ButtonDesign();