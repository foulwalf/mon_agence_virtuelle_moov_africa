import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

///génère un contaainer déjà stylisé pour recevoir un textfield
class TextFieldContainerGenerator extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const TextFieldContainerGenerator({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: primaryColorShade4,
        borderRadius: BorderRadius.circular(6),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
