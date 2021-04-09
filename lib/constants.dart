import 'package:flutter/material.dart';

const decorationGradient = LinearGradient(
  begin: Alignment.center,
  end: Alignment.topCenter,
  colors: [
    Color(0xFF59C6E5),
    Color(0xFF56D0DB),
  ],
);

const activeCardColor = Color(0xFFEDEDED);
const inactiveGradient = null;
const activeGradient = decorationGradient;
const inactiveFontColor = Color(0xFF5C6480);
const activeFontColor = Color(0xFFEDEDED);
const inactiveIconColor = Color(0xFF5C6480);
const activeIconColor = Color(0xFFEDEDED);
const activeSliderColor = Color(0xFF59C6E5);
const inactiveSliderColor = Color(0xFF56D0DB);

const labelTextStyle = TextStyle(
  fontSize: 14.0,
  color: Color(0xFF5C6480),
);

const labelMiddleTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800); //TextStyle

const shadowButtonsMin = BoxShadow(
  color: Colors.white,
  spreadRadius: 2,
  blurRadius: 2,
  offset: Offset(-2, -2),
);

const shadowButtonPlus = BoxShadow(
  color: Color(0xFFC8D6E0),
  spreadRadius: 2,
  blurRadius: 2,
  offset: Offset(2, 2),
);

const shadowCircleMin = BoxShadow(
  color: Colors.white,
  spreadRadius: 20,
  blurRadius: 25,
  offset: Offset(-12, -12),
);

const shadowCirclePlus = BoxShadow(
  color: Color(0xFFC8D6E0),
  spreadRadius: 20,
  blurRadius: 25,
  offset: Offset(2, 2),
);
