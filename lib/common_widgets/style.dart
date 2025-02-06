import 'package:flutter/material.dart';

TextStyle headerStyling({
  String fontFamily = 'Poppins-Bold',
  double fontSize = 20.0,
  FontWeight fontWeight = FontWeight.normal,
  Color color = const Color(0xFF000000),
  FontStyle fontStyle = FontStyle.normal,
  double letterSpacing = 0.0,
  double wordSpacing = 0.0,
  TextDecoration decoration = TextDecoration.none,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    decoration: decoration,
  );
}

TextStyle subHeaderStyling({
  String fontFamily = 'Poppins-SemiBold',
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.grey,
  FontStyle fontStyle = FontStyle.normal,
  double letterSpacing = 0.0,
  double wordSpacing = 0.0,
  TextDecoration decoration = TextDecoration.none,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    decoration: decoration,
  );
}

TextStyle styling({
  String fontFamily = 'Poppins-Regular',
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.normal,
  Color? color = const Color(0xFF000000),
  FontStyle fontStyle = FontStyle.normal,
  double letterSpacing = 0.0,
  double wordSpacing = 0.0,
  TextDecoration decoration = TextDecoration.none,
  double? height,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    decoration: decoration,
  );
}
