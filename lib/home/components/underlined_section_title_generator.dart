import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

class UnderlinedSectionTitleGenerator extends StatelessWidget {
  const UnderlinedSectionTitleGenerator({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      height: 25,
      margin: const EdgeInsets.symmetric(
        horizontal: defaultSpace / 2,
        vertical: defaultSpace / 4,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: defaultSpace / 2,
            ),
            child: Text(
              text,
              style: theme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: primaryColorShade1,
              ),
            ),
          ),
          Positioned(
            left: 5,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(
                right: defaultSpace / 4,
              ),
              height: 10,
              color: primaryColorShade4.withOpacity(0.25),
            ),
          )
        ],
      ),
    );
  }
}
