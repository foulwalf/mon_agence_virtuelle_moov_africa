import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared_components/vertical_spacer_generator.dart';
import 'Formulaire.dart';

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
      appBar: builAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Formulaire(),
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
                          'une réclamation',
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
                            'Réclamations ',
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

  AppBar builAppBar() {
    final theme = Theme
        .of(context)
        .textTheme;
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

}
