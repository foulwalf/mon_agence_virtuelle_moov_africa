import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/Services/Demandes/Recap.dart';

import '../../constants/constants.dart';
import '../../shared_components/vertical_spacer_generator.dart';
import 'Categories.dart';

class Demandes extends StatefulWidget {
  const Demandes({Key? key}) : super(key: key);

  @override
  _Demandes createState() => _Demandes();
}

class _Demandes extends State<Demandes> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Categories(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 55.0,left: 15.0,right: 15.0),
                child: Container(
                  margin:  const EdgeInsets.symmetric(
                    horizontal: defaultSpace / 2,
                    vertical: defaultSpace,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSpace,
                    vertical: defaultSpace * 1.5,
                  ),
                  height: size.height * .3,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage('assets/images/pictures/demande.jpg'),
                      fit: BoxFit.fitWidth
                  ),
                    color: primaryColorShade2,
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
                            'Faire ',
                            style: theme.headline6?.copyWith(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text(
                          'une demande',
                          style: theme.headline6?.copyWith(
                              color: white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      VerticalSpacerGenerator(
                        height: 5,
                      ),

                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Recap(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 55.0,left: 15.0,right: 15.0),
                child: Container(
                  margin:  const EdgeInsets.symmetric(
                    horizontal: defaultSpace / 2,
                    vertical: defaultSpace,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSpace,
                    vertical: defaultSpace * 1.5,
                  ),
                  height: size.height * .3,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        alignment: Alignment.topRight,
                        image: AssetImage('assets/images/pictures/demande.jpg'),
                        fit: BoxFit.fitWidth
                    ),
                    color: primaryColorShade2,
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
                            'Demandes ',
                            style: theme.headline6?.copyWith(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text(
                          'Nombre : 0',
                          style: theme.headline6?.copyWith(
                              color: white,
                              fontWeight: FontWeight.bold,
                            fontSize: 24.0
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text(
                          'En cours : 0',
                          style: theme.headline6?.copyWith(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text(
                          'Non Lues : 0',
                          style: theme.headline6?.copyWith(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}
