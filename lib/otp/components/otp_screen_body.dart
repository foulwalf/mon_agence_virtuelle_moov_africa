import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/otp/components/otp_screen_background.dart';
import 'package:mon_agence_virtuelle_moov_africa/otp/components/otp_inputfield_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/otp/components/otp_validity_timer_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/textfield_container_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/elevatedbutton_with_icon_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/vertical_spacer_generator.dart';

///strcuture du corps de la page de connexion
///contient tous les widgets tels que le texte de bienvenue, les hints
///les inputs et buttons
class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({Key? key}) : super(key: key);

  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  static const otpValidityMinutes = 01;
  static const otpValiditySeconds = 30;
  var isOtpCodeValide = true;
  var minutes = otpValidityMinutes;
  var seconds = otpValiditySeconds;

  Timer? otpValidityTimer;

  void startTimer() {
    otpValidityTimer = Timer.periodic(
      const Duration(seconds: 1),
      otpValidityTimerTCallBack,
    );
  }

  void otpValidityTimerTCallBack(Timer timer) {
    if (seconds > 0) {
      setState(() {
        seconds--;
      });
    } else {
      if (minutes > 0) {
        setState(() {
          minutes--;
          seconds = 59;
        });
      } else {
        stopTimer();
      }
    }
  }

  void stopTimer() {
    otpValidityTimer!.cancel();
    setState(() {
      isOtpCodeValide = false;
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var otpValidity = '$minutes : $seconds';
    bool goToNextInput() {
      return FocusScope.of(context).nextFocus();
    }

    bool goToPreviousInput() {
      return FocusScope.of(context).previousFocus();
    }

    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return OtpScreenBackground(
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 100,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vérification OTP",
                      style: theme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VerticalSpacerGenerator(
                      height: 15,
                    ),
                    const CaptionTextGenerator(
                      text:
                          "Vous allez recevoir un code de 5 chiffres par SMS via le numéro saisi précédemment, saisissez-le et passez à la validation",
                    ),
                    VerticalSpacerGenerator(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldContainerGenerator(
                            height: 60,
                            width: 60,
                            child: OtpInputFieldGenerator(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  goToNextInput();
                                }
                              },
                            ),
                          ),
                          TextFieldContainerGenerator(
                            height: 60,
                            width: 60,
                            child: OtpInputFieldGenerator(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  goToNextInput();
                                } else {
                                  goToPreviousInput();
                                }
                              },
                            ),
                          ),
                          TextFieldContainerGenerator(
                            height: 60,
                            width: 60,
                            child: OtpInputFieldGenerator(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  goToNextInput();
                                } else {
                                  goToPreviousInput();
                                }
                              },
                            ),
                          ),
                          TextFieldContainerGenerator(
                            height: 60,
                            width: 60,
                            child: OtpInputFieldGenerator(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  goToNextInput();
                                } else {
                                  goToPreviousInput();
                                }
                              },
                            ),
                          ),
                          TextFieldContainerGenerator(
                            height: 60,
                            width: 60,
                            child: OtpInputFieldGenerator(
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  goToPreviousInput();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacerGenerator(
                      height: 15,
                    ),
                    ElevatedButtonWithIconGenerator(
                      label: "VERIFICATION",
                      iconData: Icons.check_circle,
                      onPressFunction: () {},
                    ),
                    VerticalSpacerGenerator(
                      height: 20,
                    ),
                    OtpValidityTimerGenerator(
                      otpValidity: otpValidity,
                      isOtpCodeValide: isOtpCodeValide,
                    ),
                    VerticalSpacerGenerator(
                      height: 15,
                    ),
                    Visibility(
                      visible: !isOtpCodeValide,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOtpCodeValide = true;
                            minutes = otpValidityMinutes;
                            seconds = otpValiditySeconds;
                            startTimer();
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          child: Text(
                            "Renvoyer le code",
                            style: theme.bodyMedium?.copyWith(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
