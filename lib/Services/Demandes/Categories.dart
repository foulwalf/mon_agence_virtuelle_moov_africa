import 'package:flutter/material.dart';
import './Forms/Eq_Int.dart';
import '../../constants/constants.dart';
import 'Forms/Autres.dart';
import 'Forms/Flooz.dart';
import 'Forms/PostPaids.dart';
import 'Forms/SIM.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _Categories createState() => _Categories();
}

class _Categories extends State<Categories> {

  List<String> categories=[
    'Equipements Internet',
    'Carte SIM',
    'PostPaids',
    'Flooz',
    'Autres Demandes'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context,index){
                    String categorie = categories[index];
                    double marge = (index==4)? 30.0 : 0;
                    double marge2 = (index==0)? 35.0 : 55.0;

                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => redirection(index),
                          ),
                        );
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(top: marge2,left: 15.0,right: 15.0, bottom: marge),
                        child: Container(
                          margin:   const EdgeInsets.symmetric(
                            horizontal: defaultSpace / 2,
                            // vertical: defaultSpace,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultSpace,
                            vertical: defaultSpace * 1.5,
                          ),
                          height: 100,
                          decoration: BoxDecoration(

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
                                    categorie,
                                    style: theme.headline6?.copyWith(
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
  
  redirection(index){
    switch(index){
      case 0:
        return const Eq_int();
        break;
      case 1:
        return const SIM();
        break;
      case 2:
        return const PostPaids();
        break;
      case 3:
        return const Flooz();
        break;
      case 4:
        return const Autres();
        break;
    }
  }
}
