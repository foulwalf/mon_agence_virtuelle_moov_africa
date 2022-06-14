import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/login/components/login_screen_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
