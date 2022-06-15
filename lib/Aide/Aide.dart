import 'package:flutter/material.dart';
import './components/Dropdown.dart';
import '../constants/constants.dart';

class Aide extends StatefulWidget {
  const Aide({Key? key}) : super(key: key);

  @override
  _Aide createState() => _Aide();
}

class _Aide extends State<Aide> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(height: 54.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:   [
                const Text('Service Client',style:  TextStyle(
                    color:Colors.white,
                    fontSize: 38.0
                )),
                Image.asset('assets/images/pictures/help.png',height: 50)
              ],
            ),
            const SizedBox(height: 50.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child:  Column(
                  children:  [
                    // const Padding(
                    //   padding: EdgeInsets.only(top:58.0,left:10.0),
                    //   child: Dropdown(),
                    // ),
                    const SizedBox(height: 50.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 100,horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: primaryColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                            hintText: "Décrivez votre problème"
                          ),
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        minLines: 1,
                        maxLines: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.upgrade),
                      label: Text('Envoyer votre requete'),
                      onPressed: () {},
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: const Text("Nous tacherons de vous repondre dans les plus brefs délais",
                      textAlign: TextAlign.center,),
                    )

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
}
