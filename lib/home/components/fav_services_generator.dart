import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

class FavServicesGenerator extends StatelessWidget {
  const FavServicesGenerator({
    Key? key,
    required this.text,
    required this.onPressedFunction,
  }) : super(key: key);

  final String text;
  final void Function() onPressedFunction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: defaultSpace / 4,
        horizontal: defaultSpace / 2,
      ),
      height: 50,
      child: ElevatedButton(
        onPressed: onPressedFunction,
        child: Text(
          text,
          style: theme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
            color: white,
          ),
        ),
      ),
    );
  }
}
