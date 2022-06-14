import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';


///génère un elevatedButon avec icon
///prend en paramêtre le label, l'icone au format Icon.nom_icon et le callBack du l'action press
class ElevatedButtonWithIconGenerator extends StatelessWidget {
  final String label;
  final IconData iconData;
  final void Function() onPressFunction;
  const ElevatedButtonWithIconGenerator({
    Key? key,
    required this.label,
    required this.iconData,
    required this.onPressFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: onPressFunction,
          icon: Icon(iconData),
          label: Text(
            label,
            style: theme.button?.copyWith(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
