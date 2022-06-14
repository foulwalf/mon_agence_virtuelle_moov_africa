import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/horizontal_spacer_generator.dart';

class HistoryItemGenerator extends StatelessWidget {
  const HistoryItemGenerator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultSpace,
          vertical: defaultSpace / 5,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.phone,
                  color: white,
                  semanticLabel: "Phone call",
                  size: defaultIconSize,
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultSpace,
                vertical: defaultSpace / 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+225 0890900989",
                    style: theme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.call_missed,
                        size: defaultIconSize / 1.5,
                        color: red,
                      ),
                      HorizontalSpacerGenerator(width: 5),
                      CaptionTextGenerator(
                        text: "08:30, 18secs",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
