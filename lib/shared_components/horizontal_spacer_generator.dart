import 'package:flutter/material.dart';

class HorizontalSpacerGenerator extends StatelessWidget {
  final double width;
  const HorizontalSpacerGenerator({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
