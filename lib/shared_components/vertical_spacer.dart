import 'package:flutter/material.dart';

///génère une sizedBox servant créateur d'espaces verticaux d'une hauteur correspondant
///au nombre passé en paramêtre
class VerticalSpacerGenerator extends StatelessWidget {
  double height;
  VerticalSpacerGenerator({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
