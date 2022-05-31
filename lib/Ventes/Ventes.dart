import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import './Types/Eq_Int.dart';
import './components/NavBarTab.dart';


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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:  [
            // DefaultTabController(
            //     length: 4,
            //     child:NavBarTab()
            // ),

            SizedBox(height: 24.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  width: double.infinity,
                  height: 60,
                  child: TextField(
                    style: theme.textTheme.bodyText1,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.only(top:1.0,left:10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Que recherchez vous?",
                        fillColor: Colors.grey.shade300
                    ),
                  )
              ),
            ),
            SizedBox(height: 24.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  textButton('Equipements internet',0),
                  textButton('Téléphones',1),
                  textButton('Habits',2)

                ],
              ),
            ),
            SizedBox(height: 24.0,),
            conditionalDisplay()


          ],
        ),
      ),
    );
  }

  Padding textButton(String data,int i){
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: TextButton(
          onPressed: (){
            setState((){
              index=i;
            });
          },
          style: ButtonStyle(
            backgroundColor: (index==i)? MaterialStateProperty.all(const Color(0xFF03A9F4)):MaterialStateProperty.all(const Color(0xFFFFFFFF)),
              fixedSize: MaterialStateProperty.all(const Size(130.0, 70.0)),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.red)
                  )
              )
          ),
          child:Text(data,textAlign: TextAlign.center,style: TextStyle(
            color: (index==i)? Colors.white : Colors.blueAccent
          ),)
      ),
    );
  }
  conditionalDisplay(){
    switch(index){
      case 0 :
        return const Eq_Int();
      default:
        return Center();
    }
  }
}


