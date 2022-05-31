import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:my_moov/pages/Demande.dart';
// import 'package:my_moov/pages/Home.dart';
// import './constants.dart';
// import './pages/FAQ.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:my_moov/shared_components/constants.dart';
// import 'pages/Ventes/Ventes.dart';
// import './pages/Reclamations.dart';
// import './pages/SIM.dart';
import '../Home/Home.dart';
import '../Ventes/Ventes.dart';
import '../login/components/body.dart';
import '../shared_components/constants.dart';
// import './theme/MyMoovTheme.dart';

class Accueil extends StatefulWidget {

  Accueil({Key? key}) : super(key: key){}
  @override
  // TODO: implement createState
  _AccueilState createState() => _AccueilState();

}

class _AccueilState extends State<Accueil> {

  late int i =0;
  var currentPage = DrawerSections.Notifications;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Moov',style: TextStyle(
            color: Colors.white
        )
        ),
        // leading: Image.asset('assets/images/logo-moov-africa.png'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        // automaticallyImplyLeading: false,
        actions:  [
          IconButton(onPressed: (){
            print('ok');
          }, icon: const FaIcon(FontAwesomeIcons.gear)
          )

        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.blue.shade400,
      //   child: SingleChildScrollView(
      //     child: Container(
      //       child: Column(
      //         children:  [
      //           SizedBox(
      //             height: 200.0,
      //             width: MediaQuery.of(context).size.width,
      //             child: Image.asset('assets/images/logo-moov-africa.jpeg',fit:BoxFit.cover),
      //           ),
      //           const SizedBox(
      //             height: 20.0,
      //           ),
      //           MyDrawerList()
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Container(
        color: secondaryColor,
        height: 80,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0,vertical:10.0),
          child: GNav(
            // backgroundColor: secondaryColor,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: theme.primaryColor,
            onTabChange: (index){
              setState(() {
                i = index;
              });
            },
            gap:5,
            padding: const EdgeInsets.all(16.0),
            tabs: const [
              GButton(icon: Icons.home,text: 'Accueil'),
              GButton(icon: Icons.shopping_cart,text: 'Ventes'),
              GButton(icon: Icons.warning_amber_outlined,text: 'Plaintes'),
              GButton(icon: Icons.help,text: 'FAQ'),
              GButton(icon: Icons.sim_card,text: 'Demandes'),
              //sim rentre dans l'onglet demandes
            ],
          ),
        ),
      ),
      body: display(i),
    );
  }

  display(index){
    switch(index){
      case 0:
        return const Home();
      case 1:
        return const Ventes();
      // case 2:
      //   return const Reclamations();
      // case 3:
      //   return const SIM();
      // case 4:
      //   return const Demande();
    }
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(0, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.Notifications ? true : false),
          menuItem(1, "Requetes Client", Icons.people_alt_outlined,
              currentPage == DrawerSections.Etat ? true : false),
          menuItem(2, "Déconnexion", Icons.logout,false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          setState(() {
            switch(id){
              case 0:
                currentPage = DrawerSections.Notifications;
                break;
              case 1 :
                currentPage = DrawerSections.Etat;
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const Body();
                }));
                break;
            }

          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

enum DrawerSections {
  Notifications,
  Etat
}