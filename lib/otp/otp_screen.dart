import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/otp/components/otp_screen_body.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OtpScreenBody(),
      ),
    );
  }
}
