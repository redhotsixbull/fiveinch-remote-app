import 'package:flutter/material.dart';

// enum MassageCategory{healthCare,auto,manual,brain,meditation,antiNoising,mental}
//
// class MassageModeBrain {
//   //TODO 헬스케어일때는 GLED 림프, 소화숙취 ....
//   List<Massage> healthCareMassageList = [];
//   List<Massage> brainMassageList = [];
//
//   getMassageMode(MassageCategory massageCategory){
//     switch (massageCategory){
//       case MassageCategory.brain:
//         return brainMassageList;
//         break;
//       case MassageCategory.auto:
//         return;
//         break;
//       case MassageCategory.manual:
//         return;
//         break;
//       case MassageCategory.meditation:
//         return;
//         break;
//       case MassageCategory.healthCare:
//         return healthCareMassageList;
//         break;
//     }
//   }
// }

class Massage {
  String name;
  Icon icon;
  bool hasMusic;
  List<Music> musicList;
  int bleMode;
  int group;
  Massage({this.name, this.icon, this.hasMusic, this.musicList,
      this.bleMode,this.group});
}

class Music {
  String title;
  int key;
  Music({this.title,this.key});
}