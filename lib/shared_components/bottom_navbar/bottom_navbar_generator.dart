import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

class BottomNavigationBarGenerator extends StatefulWidget {
  const BottomNavigationBarGenerator({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarGenerator> createState() =>
      _BottomNavigationBarGeneratorState();
}

class _BottomNavigationBarGeneratorState
    extends State<BottomNavigationBarGenerator> {
  int activeItem = 0;

  @override
  Widget build(BuildContext context) {
    GlobalKey widgetKey = GlobalKey();
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Material(
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
          width: MediaQuery.of(context).size.width / 5,
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
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
}
