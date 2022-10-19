import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../translations/locale_keys.g.dart';

Map card_options = {
  "Vodafone": {
    "Item": [
      "لشحن كارت عادي/فكه",
      "لشحن الكارت دقائق لكل الشبكات ",
      "لشحن فلكسات"
    ],
    "Codes": ['858', '858*1', '858*2'],
    "image": "assets/options_background/vodafone.jpg",
    "title": "خدمات فودافون",
    'color': {
      'titlecol': Colors.red,
      'cam': Colors.red,
      'input': Colors.white,
      'hint': Colors.white,
      'border': Colors.red,
      'label': Colors.white
    },
  },
  "Etisalat": {
    "Item": [
      "لشحن كارت عادي /فكه",
      "لشحن كارت دقائق لكل الشبكات",
      "لشحن ميكسات"
    ],
    "Codes": ['556', '556*2', '556*1'],
    "image": "assets/options_background/Eitsaat.jpg",
    "title": "خدمات اتصالات",
    'color': {
      'titlecol': Colors.green,
      'cam': Colors.greenAccent,
      'input': Colors.greenAccent,
      'hint': Colors.greenAccent,
      'border': Colors.greenAccent,
      'label': Colors.green
    },
  },
  "Orange": {
    "Item": ["لشحن كارت عادي /فكه", "لشحن كارت اكستر"],
    "Codes": ['102', '102'],
    "image": "assets/options_background/orange.jpg",
    "title": "خدمات أورانج",
    'color': {
      'titlecol': Colors.orange,
      'cam': Colors.orange,
      'input': Colors.white,
      'hint': Colors.orange,
      'border': Colors.orange,
      'label': Colors.yellow
    },
  },
  "We": {
    "Item": ["لشحن كارت عادي/فكه", "لشحن وحدات ", "لشحن ميجابايت انترنت"],
    "Codes": ['555', '566', '599'],
    "image": "assets/options_background/We.jpg",
    "title": "خدمات وى",
    'color': {
      'titlecol': Colors.purple,
      'cam': Colors.purpleAccent,
      'input': Colors.purpleAccent,
      'hint': Colors.white,
      'border': Colors.purple,
      'label': Colors.white
    },
  }
};

Map team_members = {
  "names": [
    'Mohamed Mohamed Atef Amhawy',
    'Alhassan Mohamed Abd El-Aziz',
    'Mahmoud Nagy Elsayed',
    'Sara Abdulah Nassar',
    'Alaa Mohamed Mohamed',
    'Duaa Mustafa Abdulbaset',
    'Doaa Gamal Eltohamy'
  ],
  'personal_iamge': [
    'assets/team_member/mohamed.jfif',
    'assets/team_member/alhassan.jfif',
    'assets/team_member/mahmoud.jfif',
    'assets/team_member/sara.jfif',
    'assets/team_member/alaa.jfif',
    'assets/team_member/doaa_m.jfif',
    'assets/team_member/doaa_g.jfif'
  ]
};
List<String> steps = [
  "first",
  "second",
  "third",
  "fourth",
  "fifth",
  "sixthly",
  "seventh",
  "eighth",
];
