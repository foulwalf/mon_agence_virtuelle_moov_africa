// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import './Types/Telephones.dart';
// import './components/NavBarTab.dart';


class Ventes extends StatefulWidget {
  const Ventes({Key? key}) : super(key: key);

  @override
  _Ventes createState() => _Ventes();
}

class _Ventes extends State<Ventes> {

  int index=0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color:primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(height: 54.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Ventes',style:  TextStyle(
                    color:Colors.white,
                    fontSize: 38.0
                )),
                Image.asset('assets/images/pictures/shop-cart.png',height: 50)
              ],
            ),
            const SizedBox(height: 50.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:  Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top:38.0,left:10.0),
                      child: Text('Catégories',style: TextStyle(
                          fontSize: 34.0
                      )),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      children: [
                        textButton('Téléphones', 0),
                        textButton('Eq. Internet', 1)
                      ],
                    ),
                    const SizedBox(height: 30.0,),
                    conditionalDisplay(context)
                  ],
                ),
              ),
            )
            // conditionalDisplay()
          ],
        ),
      ),
    );
  }


  TextButton textButton(String data,int i){
    return TextButton(
        onPressed: (){
          // if(index == i)
          setState((){
            index=i;
          });
        },
        child: Text(data,style:  TextStyle(
            color: (index==i) ? secondaryColor :Colors.black54,
            fontSize: 19.0
        ))
    );
  }

  conditionalDisplay(BuildContext context){
    var marge=MediaQuery.of(context).size.width/5;
    switch(index){
      case 0 :
        return  Padding(
          padding: EdgeInsets.only(left:marge),
          child: const Telephones(),
        );
      default:
        return Center();
    }
  }
}


