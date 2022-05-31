import 'package:flutter/material.dart';
import './components/Welcome.dart';
import './components/ContainerEvent.dart';
import './components/Title.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _Home createState() => _Home();
}


class _Home extends State<Home> {

  bool darkMode = true;

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return   Scaffold(
        backgroundColor: Colors.grey.shade200,
        body:  SingleChildScrollView(
          child: Column(
            children:  [

             const Welcome(),

              Padding(
                padding: const EdgeInsets.only(top:22.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.66,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      const Padding(
                        padding: EdgeInsets.only(left:15.0,right:15.0),
                        child: Titles(),
                      ),

                      const SizedBox(height: 10.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            containerEvent(),
                            containerEvent(),
                            containerEvent(),
                            containerEvent()
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),


            ],
          ),
        )
    );
  }



}


