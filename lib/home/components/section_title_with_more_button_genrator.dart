import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/check_more_button_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/underlined_section_title_generator.dart';

class SectionTitleWithMoreButtonGenerator extends StatelessWidget {
  const SectionTitleWithMoreButtonGenerator({
    Key? key,
    required this.text,
    required this.onPressedFunction,
  }) : super(key: key);

  final String text;
  final void Function() onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        UnderlinedSectionTitleGenerator(
          text: text,
        ),
        //Text("(${today.day}-${today.month}-${today.year})"),
        const Spacer(),
        CheckMoreButtonGenerator(
          onPressedFunction: onPressedFunction,
        )
      ],
    );
  }
}
