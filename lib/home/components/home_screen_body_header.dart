import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/horizontal_spacer_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/vertical_spacer_generator.dart';

class HomeScreenBodyHeader extends StatelessWidget {
  const HomeScreenBodyHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: defaultSpace / 2,
        vertical: defaultSpace,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultSpace,
        vertical: defaultSpace * 1.5,
      ),
      height: size.height * .2,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: blueBoxShadows,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue',
            style: theme.headline6?.copyWith(
              color: white,
            ),
          ),
          VerticalSpacerGenerator(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+225 0170355790',
                    style: theme.headline5?.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const HorizontalSpacerGenerator(
                    width: 5,
                  ),
                  const Icon(
                    Icons.report_outlined,
                    color: white,
                  ),
                ],
              ),
              const CaptionTextGenerator(
                text: "Numéro de téléphone",
                color: white,
              )
            ],
          )
        ],
      ),
    );
  }
}
