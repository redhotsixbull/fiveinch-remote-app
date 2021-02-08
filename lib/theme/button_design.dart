import 'package:flutter/cupertino.dart';

class ButtonDesign{
  mainPageMassageButton(double radius, Color color){
   return BoxDecoration(
     borderRadius: BorderRadius.circular(radius),
     color: color,
   );
  }
}
final buttonDesign = ButtonDesign();