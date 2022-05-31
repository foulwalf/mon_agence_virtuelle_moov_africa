import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/login/login_screen.dart';
import 'package:mon_agence_virtuelle_moov_africa/theme/app_theme.dart';

void main() {
  runApp(MonAgenceVirtuelleMoovAfrica());
}

class MonAgenceVirtuelleMoovAfrica extends StatefulWidget {
  @override
  _MonAgenceVirtuelleMoovAfrica createState() => _MonAgenceVirtuelleMoovAfrica();
}

class _MonAgenceVirtuelleMoovAfrica extends State<MonAgenceVirtuelleMoovAfrica> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon agence virtuelle Moov Africa",
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: MyMoovTheme.light,
      darkTheme: MyMoovTheme.dark,
      themeMode: currentTheme.currentTheme,
    );
  }
}
