import 'package:five_inch_remote_app/model/category.dart';
import 'package:flutter/material.dart';

import 'massage.dart';

Massage gled = Massage(
  name: "GLED",
  icon: Icon(Icons.account_circle),
  musicList: List<Music>(),
  bleMode: 10,
  hasMusic: false,
);

Massage lymph = Massage(
  name: "림프마사지",
  icon: Icon(Icons.account_circle),
  musicList: List<Music>(),
  bleMode: 10,
  hasMusic: false,
);

Massage digest = Massage(
  name: "소화숙취해소",
  icon: Icon(Icons.account_circle),
  musicList: List<Music>(),
  bleMode: 10,
  hasMusic: false,
);

Massage headAche = Massage(
  name: "두통마사지",
  icon: Icon(Icons.account_circle),
  musicList: List<Music>(),
  bleMode: 10,
  hasMusic: false,
);

Massage waist = Massage(
    name: "허리집중",
    icon: Icon(Icons.account_circle),
    musicList: List<Music>(),
    bleMode: 10,
    hasMusic: false,
    group: 1);

Massage waist2 = Massage(
    name: "허리집중2",
    icon: Icon(Icons.account_circle),
    musicList: List<Music>(),
    bleMode: 10,
    hasMusic: false,
    group: 1);

Massage test = Massage(
    name: "테스트",
    icon: Icon(Icons.account_circle),
    musicList: List<Music>(),
    bleMode: 10,
    hasMusic: false,
    group: 2);

MassageCategory healthCare = MassageCategory(
  name: "헬스케어 마사지",
  icon: Icon(Icons.account_circle),
  massageList: [gled, digest, headAche, lymph],
);

MassageCategory autoMode = MassageCategory(
  name: "자동모드",
  icon: Icon(Icons.account_circle),
  massageList: [waist, waist2, test],
);

List<MassageCategory> categoryList = [healthCare, autoMode];

//enum MassageCategory{healthCare,auto,manual,brain,meditation,antiNoising,mental}
