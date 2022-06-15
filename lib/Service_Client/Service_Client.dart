import 'package:flutter/material.dart';
import './components/Dropdown.dart';
import '../constants/constants.dart';

class Service_Client extends StatefulWidget {
  const Service_Client({Key? key}) : super(key: key);

  @override
  _Service_Client createState() => _Service_Client();
}

class _Service_Client extends State<Service_Client> {

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
                    const Padding(
                      padding: EdgeInsets.only(top:28.0,left:10.0),
                      child: Dropdown(),
                    ),
                    const SizedBox(height: 50.0,),

                    TextField(
                      decoration: InputDecoration( focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.orange, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),),
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      minLines: 1,
                      maxLines: 5,
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
