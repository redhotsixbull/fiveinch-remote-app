import 'package:flutter/material.dart';

enum MassageCategory{healthCare,auto,manual,brain,meditation,antiNoising,mental}

class MassageModeBrain {
  //TODO 헬스케어일때는 GLED 림프, 소화숙취 ....
  List<MassageMode> healthCareMassageList = [];
  List<MassageMode> brainMassageList = [];

  getMassageMode(MassageCategory massageCategory){
    switch (massageCategory){
      case MassageCategory.brain:
        return brainMassageList;
        break;
      case MassageCategory.auto:
        return;
        break;
      case MassageCategory.manual:
        return;
        break;
      case MassageCategory.meditation:
        return;
        break;
      case MassageCategory.healthCare:
        return healthCareMassageList;
        break;
    }
  }
}

class MassageMode {
  String massageModeName;
  Icon modeIcon;
  bool music;
  List<Music> musicList;
  int bleMode;
  MassageMode(this.massageModeName, this.modeIcon, this.music, this.musicList,
      this.bleMode);
}

class Music {
  String title;
}