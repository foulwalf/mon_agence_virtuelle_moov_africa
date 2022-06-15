import 'package:flutter/material.dart';

class Flooz extends StatefulWidget {
  const Flooz({Key? key}) : super(key: key);

  @override
  _Flooz createState() => _Flooz();
}

class _Flooz extends State<Flooz> {

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
