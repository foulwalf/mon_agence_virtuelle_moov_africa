import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

class CheckMoreButtonGenerator extends StatelessWidget {
  const CheckMoreButtonGenerator({
    Key? key,
    required this.onPressedFunction,
  }) : super(key: key);

  final void Function() onPressedFunction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(right: defaultSpace),
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(defaultRadius * 2),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              primaryColorShade3,
            ),
          ),
          onPressed: onPressedFunction,
          child: Text(
            "Voir tout",
            style: theme.bodySmall?.copyWith(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
