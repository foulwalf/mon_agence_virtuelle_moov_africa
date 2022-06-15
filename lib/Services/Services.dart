import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/Services/components/ImageDesc.dart';
import 'package:mon_agence_virtuelle_moov_africa/Services/components/SearchBar.dart';
import '../constants/constants.dart';
import '../shared_components/caption_text_generator.dart';
import '../shared_components/horizontal_spacer_generator.dart';
import '../shared_components/vertical_spacer_generator.dart';
import 'Demandes/Demandes.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _Services createState() => _Services();
}

class _Services extends State<Services> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        children:  [
          // SizedBox(height: 14.0),

          // const SearchBar(),

          const ImageDesc(),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Demandes(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
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
                  image: const DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage('assets/images/pictures/ask.jpg'),
                      fit: BoxFit.fitWidth
                  ),
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
                    Row(
                      children: [
                        Text(
                          'Accéder',
                          style: theme.headline6?.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        ),
                      ],
                    ),
                    VerticalSpacerGenerator(
                      height: 5,
                    ),
                    Text(
                      'aux Demandes',
                      style: theme.headline6?.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
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
                  image: const DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage('assets/images/pictures/claim.png'),
                      fit: BoxFit.fill
                  ),
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
                    Row(
                      children: [
                        Text(
                          'Faire',
                          style: theme.headline6?.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        ),
                      ],
                    ),
                    VerticalSpacerGenerator(
                      height: 5,
                    ),
                    Text(
                      'une réclamation',
                      style: theme.headline6?.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
