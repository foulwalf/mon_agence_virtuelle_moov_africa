import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/fav_services_generator.dart';

class FavServicesSection extends StatelessWidget {
  const FavServicesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(
          top: defaultSpace / 4,
          bottom: defaultSpace * 1.5,
          left: defaultSpace / 2,
          right: defaultSpace / 2,
        ),
        height: 60,
        child: Row(
          children: List.generate(
            10,
            (index) {
              if (index < 9) {
                return FavServicesGenerator(
                  text: "Carte SIM $index",
                  onPressedFunction: () {},
                );
              } else {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: defaultSpace / 4,
                    horizontal: defaultSpace / 2,
                  ),
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const FaIcon(
                      FontAwesomeIcons.plus,
                      size: 20,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
