// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

//common styles

import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';


final normalRedStyle = normalRubikSize(color: Color(0xffde350b), fontSize: 14);
TextStyle normalRubikSize({double fontSize, Color color}) => fontRubikSize(
    fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
TextStyle fontRubikSize(
        {double fontSize, Color color, FontWeight fontWeight}) =>
    TextStyle(
        fontFamily: 'Rubik',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        letterSpacing: 0);

final heading1 = TextStyle(
  fontSize: 18,
  color: Neutral_1,
  fontFamily: "nunito_bold"
);
TextStyle regular(Color color) => TextStyle(
  fontSize: 14,
  color: color,
  fontFamily: "nunito_regular"
);
TextStyle caption1(Color color) => TextStyle(
  fontSize: 12,
  color: color,
  fontFamily: "nunito_extrabold"
);
TextStyle title(Color color) => TextStyle(
  fontSize: 20,
  color: color,
  fontFamily: "nunito_extrabold"
);
TextStyle selected_tab_style(Color color) => TextStyle(
  fontSize: 16,
  color: color,
  fontFamily: "nunito_extrabold"
);
TextStyle caption2(Color color) => TextStyle(
  fontSize: 12,
  color: color,
  fontFamily: "nunito_semibold"
);
TextStyle body3(Color color) => TextStyle(
  fontSize: 14,
  color: color,
  fontFamily: "nunito_semibold"
);
TextStyle body2(Color color) => TextStyle(
  fontSize: 16,
  color: color,
  fontFamily: "nunito_semibold"
);
TextStyle bold(Color color) => TextStyle(
  fontSize: 16,
  color: color,
  fontFamily: "nunito_bold"
);
