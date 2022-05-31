import 'package:flutter/material.dart';

/// génère tout les textes de types caption ou commentaire
/// prend en paramêtre le text (obligatoire) et la couleur (facultative)
/// par défaut la couleur est celle se trouvant dans theme/MyMoovTheme.dart style caption
class CaptionTextGenerator extends StatelessWidget {
  final String text;
  final color;
  const CaptionTextGenerator({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final Text textWidget;
    if (color == null) {
      textWidget = Text(
        text,
        style: theme.caption,
        textAlign: TextAlign.center,
      );
    } else {
      textWidget = Text(
        text,
        style: theme.caption?.copyWith(color: color),
        textAlign: TextAlign.center,
      );
    }
    return textWidget;
  }
}
