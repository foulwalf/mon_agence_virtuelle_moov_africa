import 'package:flutter/material.dart';

class SIM extends StatefulWidget {
  const SIM({Key? key}) : super(key: key);

  @override
  _SIM createState() => _SIM();
}

class _SIM extends State<SIM> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [

          ],
        ),
      ),
    );
  }


}
