import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/login/components/login_screen_background.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/textfield_container_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/caption_text_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/elevatedbutton_with_icon_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/login/components/textfield_generator.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/vertical_spacer.dart';

///strcuture du corps de la page de connexion
///contient tous les widgets tels que le texte de bienvenue, les hints
///les inputs et buttons
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Background(
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
                      "Bienvenue",
                      style: theme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VerticalSpacerGenerator(
                      height: 15,
                    ),
                    const CaptionTextGenerator(
                      text:
                          "Veuillez vous connecter avec votre numéro de téléphone Moov Africa",
                    ),
                    VerticalSpacerGenerator(
                      height: 35,
                    ),
                    TextFieldContainerGenerator(
                      width: size.width * .8,
                      height: 60,
                      child: TextFieldGenerator(
                        hintText: "Numéro de téléphone",
                        prefixIcon: Icons.sim_card,
                        suffixIcon: null,
                        onChanged: (value) {
                          return;
                        },
                      ),
                    ),
                    VerticalSpacerGenerator(
                      height: 20,
                    ),
                    ElevatedButtonWithIconGenerator(
                      label: "CONNNEXION",
                      iconData: Icons.login_rounded,
                      onPressFunction: () {},
                    ),
                    VerticalSpacerGenerator(
                      height: 35,
                    ),
                    const CaptionTextGenerator(
                      text:
                          "Vous n'avez pas de numéro de téléphone Moov Africa CI ? Accédez au ",
                      color: black,
                    ),
                    VerticalSpacerGenerator(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Mode invité");
                      },
                      child: Text(
                        "Mode invité",
                        style: theme.bodyMedium?.copyWith(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
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
