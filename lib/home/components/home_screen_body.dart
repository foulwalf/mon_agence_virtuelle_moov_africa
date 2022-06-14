import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/check_more_button_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/fav_services_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/fav_services_section.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/history_item_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/home_screen_section_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/home_screen_body_header.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/section_title_with_more_button_genrator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/underlined_section_title_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/horizontal_spacer_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/vertical_spacer_generator.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeScreenBodyHeader(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UnderlinedSectionTitleGenerator(
                text: "Mes services favoris",
              ),
              VerticalSpacerGenerator(height: 10),
              const FavServicesSection(),
              VerticalSpacerGenerator(height: 10),
              SectionTitleWithMoreButtonGenerator(
                text: "Promotions du jours",
                onPressedFunction: () {},
              ),
              VerticalSpacerGenerator(height: 10),
              HomeScreenSectionGenerator(
                child: Column(
                  children: [
                    PromotionItemGenerator(theme: theme),
                  ],
                ),
              ),
              VerticalSpacerGenerator(height: 10),
              SectionTitleWithMoreButtonGenerator(
                text: "Mon historique du jour",
                onPressedFunction: () {},
              ),
              VerticalSpacerGenerator(height: 10),
              HomeScreenSectionGenerator(
                child: Column(
                  children: const [
                    HistoryItemGenerator(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PromotionItemGenerator extends StatelessWidget {
  const PromotionItemGenerator({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultSpace,
          vertical: defaultSpace / 5,
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: mixedBlueWhiteBackgroundColor,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/logo/moov_money_logo.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultSpace,
                  vertical: defaultSpace / 2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MOOV MONEY",
                      style: theme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: primaryColorShade1,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: theme.bodySmall,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
