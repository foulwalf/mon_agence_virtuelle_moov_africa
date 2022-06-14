import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';
import 'package:mon_agence_virtuelle_moov_africa/home/components/home_screen_body.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/bottom_navbar/bottom_navbar_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: builAppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(child: HomeScreenBody()),
      ),
      bottomNavigationBar: const BottomNavigationBarGenerator(),
    );
  }

  AppBar builAppBar() {
    final theme = Theme.of(context).textTheme;
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
}
