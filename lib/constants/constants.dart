import 'package:flutter/material.dart';

///Contient toutes les constantes de l'application, comme pour l'instant les couleurs
const primaryColor = Color(0xFF005ca9);
const primaryColorShade1 = Color(0xFF2b77b7);
const primaryColorShade2 = Color(0xFF2b77b7);
const primaryColorShade3 = Color(0xFF5592c6);
const primaryColorShade4 = Color(0xFF80aed4);
const secondaryColor = Color(0xFFED6606);
const secondaryColorShade1 = Color(0xFFF08030);
const secondaryColorShade2 = Color(0xFFF39959);
const secondaryColorShade3 = Color(0xFFF6B383);
const secondaryColorShade4 = Color(0xFFF9CCAC);
const inactiveColor = Color(0xFF808080);
const grayBackgroundColor = Color(0xFFF2F2F2);
const mixedBlueWhiteBackgroundColor = Color(0xFFf3f5f9);
const black = Colors.black;
const white = Colors.white;
const red = Colors.red;
const defaultSpace = 20.0;
const defaultRadius = 10.0;
const defaultIconSize = 24.0;
const elevation = 3.5;
final List<BoxShadow> whiteBoxShadows = [
  //bottom shadow
  BoxShadow(
    offset: const Offset(0, 3),
    blurRadius: 10,
    spreadRadius: -10,
    color: primaryColor.withOpacity(0.25),
  ),
  //top shadow
  BoxShadow(
    offset: const Offset(0, -3),
    blurRadius: 10,
    spreadRadius: -10,
    color: primaryColor.withOpacity(0.25),
  ),
  //right shadow
  BoxShadow(
    offset: const Offset(3, 0),
    blurRadius: 10,
    spreadRadius: -10,
    color: primaryColor.withOpacity(0.25),
  ),
  //left shadow
  BoxShadow(
    offset: const Offset(-3, 0),
    blurRadius: 10,
    spreadRadius: -10,
    color: primaryColor.withOpacity(0.25),
  ),
];
final List<BoxShadow> blueBoxShadows = [
  BoxShadow(
    color: Colors.grey.shade300,
    spreadRadius: 0.0,
    blurRadius: elevation,
    offset: const Offset(3.0, 3.0),
  ),
  BoxShadow(
    color: Colors.grey.shade400,
    spreadRadius: 0.0,
    blurRadius: elevation / 2.0,
    offset: const Offset(3.0, 3.0),
  ),
];
