import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';

class OtpValidityTimerGenerator extends StatelessWidget {
  const OtpValidityTimerGenerator({
    Key? key,
    required this.otpValidity,
    required this.isOtpCodeValide,
  }) : super(key: key);

  final String otpValidity;
  final bool isOtpCodeValide;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      replacement: CaptionTextGenerator(
        text: "Demander un nouveau code après $otpValidity",
        color: black,
      ),
      visible: !isOtpCodeValide,
      child: const CaptionTextGenerator(
        text: "Le code n'est plus valide",
        color: black,
      ),
    );
  }
}
