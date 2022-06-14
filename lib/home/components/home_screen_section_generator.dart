import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

class HomeScreenSectionGenerator extends StatelessWidget {
  const HomeScreenSectionGenerator({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultSpace / 4,
        bottom: defaultSpace * 1.5,
        left: defaultSpace,
        right: defaultSpace,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
        boxShadow: whiteBoxShadows,
      ),
      child: child,
    );
  }
}
