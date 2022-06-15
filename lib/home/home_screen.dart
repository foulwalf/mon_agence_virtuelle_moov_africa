import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mon_agence_virtuelle_moov_africa/Map/Map.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/home_screen_body.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/bottom_navbar/bottom_navbar_generator.dart';

import '../Aide/Aide.dart';
import '../Boutique/Boutique.dart';
import '../Boutique/Boutique.dart';
import '../Services/Services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeItem = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final theme = Theme
        .of(context)
        .textTheme;
    GlobalKey widgetKey = GlobalKey();
    return Scaffold(
      appBar: builAppBar(),
      body:  SafeArea(
        child: SingleChildScrollView(
            child: conditionalDisplay() //
        ),
      ),
      bottomNavigationBar: Material(
        child: Container(
          key: widgetKey,
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: mixedBlueWhiteBackgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              generateBottomNavBarItem(
                icon: Icons.home_outlined,
                text: 'Accueil',
                isActive: true,
                index: 0,
              ),
              generateBottomNavBarItem(
                icon: Icons.work_outline_outlined,
                text: 'Services',
                isActive: false,
                index: 1,
              ),
              generateBottomNavBarItem(
                icon: Icons.shopping_cart_outlined,
                text: 'Boutique',
                isActive: false,
                index: 2,
              ),
              generateBottomNavBarItem(
                icon: Icons.location_on_outlined,
                text: 'Cartes',
                isActive: false,
                index: 3,
              ),
              generateBottomNavBarItem(
                icon: Icons.help_outline,
                text: 'Aide',
                isActive: false,
                index: 4,
              ),
            ],
          ),
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
        icon: const Icon(Icons.menu_outlined),
        onPressed: () {},
      ),
      title: Text(
        'Mon Agence virtuelle',
        style: theme.bodyText1?.copyWith(
          color: white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  Material generateBottomNavBarItem({
    required IconData icon,
    required bool isActive,
    required String text,
    required int index,
  }) {
    return Material(
      color: mixedBlueWhiteBackgroundColor,
      child: InkWell(
        onTap: () {
          setState(() {
            activeItem = index;
          });
        },
        child: Container(
          height: 80,
          width: MediaQuery
              .of(context)
              .size
              .width / 5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  size: defaultIconSize,
                  color: index == activeItem ? primaryColor : inactiveColor,
                ),
                index == activeItem
                    ? Text(
                  text,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  conditionalDisplay(){
    switch(activeItem){
      case 0:
        return const HomeScreenBody();
        break; // The switch statement must be told to exit, or it will execute every case.
      case 1:
        return const Services();
        break;
      case 2:
        return const Boutique();
        break;
      case 3:
        return const Maps();
        break;
      case 4:
        return const Aide();
      default:
        print('choose a different number!');
    }
  }



}