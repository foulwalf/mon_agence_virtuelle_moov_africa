import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Types/Eq_Int.dart';

class NavBarTab extends StatefulWidget {
  const NavBarTab({Key? key}) : super(key: key);

  @override
  _NavBarTab createState() => _NavBarTab();
}

class _NavBarTab extends State<NavBarTab> {

  int index =0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children:  [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child:  TabBar(
              onTap: (i){
                print(i);
                setState((){
                  index=i;
                });
              },
              tabs:   [
                Onglet(FontAwesomeIcons.internetExplorer,'Internet',Colors.blue),
                Onglet(FontAwesomeIcons.phone,'Télephones',Colors.blue),
                Onglet(Icons.account_box_outlined,'Account',Colors.blue),
                Onglet(Icons.home_filled,'Home',Colors.blue)

              ]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              children:  const <Widget>[
                SizedBox(height: 20.0),
                Eq_Int(),
                SizedBox(height: 20.0),

              ],
            ),
          ),
        ),
      ],
    );
  }

  Tab Onglet(IconData icon, String data,Color color){
    return Tab(
      icon: Icon(icon,color: color,),
      child:  Text(data,style:TextStyle(
        fontSize: 14.0,
          color: color
      )),
    );
  }

  ContentDisplay(){
    switch(index){
      case 0:
        return const Eq_Int();
    }
  }

}