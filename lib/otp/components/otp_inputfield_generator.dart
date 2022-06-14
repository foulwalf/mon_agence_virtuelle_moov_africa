import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInputFieldGenerator extends StatelessWidget {
  final void Function(String) onChanged;
  const OtpInputFieldGenerator({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return TextField(
      onChanged: onChanged,
      textAlign: TextAlign.center,
      style: theme.headline6,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
