import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/constants.dart';

///génère un textfield en prenant en paramêtre le hintText,
///la prefixIcon et suffixIcon au format Icon.nom_icone
/// et la valeur du onChanged
class TextFieldGenerator extends StatelessWidget {
  final String hintText;
  final prefixIcon;
  final suffixIcon;
  final ValueChanged<String> onChanged;
  const TextFieldGenerator({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final TextField textField;
    if (prefixIcon != null && suffixIcon != null) {
      textField = TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.bodySmall?.copyWith(color: black),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
        ),
        style: theme.bodyText1,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[0-9]'),
          ),
        ],
        onChanged: onChanged,
      );
    } else if (prefixIcon != null && suffixIcon == null) {
      textField = TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.bodySmall?.copyWith(color: black),
          prefixIcon: Icon(prefixIcon),
        ),
        style: theme.bodyText1,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[0-9]'),
          ),
        ],
        onChanged: onChanged,
      );
    } else if (prefixIcon == null && suffixIcon != null) {
      textField = TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.bodySmall?.copyWith(color: black),
          suffixIcon: Icon(suffixIcon),
        ),
        style: theme.bodyText1,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[0-9]'),
          ),
        ],
        onChanged: onChanged,
      );
    } else {
      textField = TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.bodySmall?.copyWith(color: black),
        ),
        style: theme.bodyText1,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[0-9]'),
          ),
        ],
        onChanged: onChanged,
      );
    }
    return textField;
  }
}
