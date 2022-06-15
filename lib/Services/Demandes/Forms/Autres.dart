import 'package:flutter/material.dart';

class Autres extends StatefulWidget {
  const Autres({Key? key}) : super(key: key);

  @override
  _Autres createState() => _Autres();
}

class _Autres extends State<Autres> {
  
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
