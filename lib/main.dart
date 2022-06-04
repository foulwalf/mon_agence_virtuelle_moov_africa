import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/otp/otp_screen.dart';
import 'package:mon_agence_virtuelle_moov_africa/theme/app_theme.dart';

void main() {
  runApp(const MonAgenceVirtuelleMoovAfrica());
}

class MonAgenceVirtuelleMoovAfrica extends StatefulWidget {
  const MonAgenceVirtuelleMoovAfrica({Key? key}) : super(key: key);

  @override
  _MonAgenceVirtuelleMoovAfrica createState() =>
      _MonAgenceVirtuelleMoovAfrica();
}

class _MonAgenceVirtuelleMoovAfrica
    extends State<MonAgenceVirtuelleMoovAfrica> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon agence virtuelle Moov Africa",
      debugShowCheckedModeBanner: false,
      home: const OtpScreen(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: currentTheme.currentTheme,
    );
  }
}
