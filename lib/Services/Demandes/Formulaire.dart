import 'package:flutter/material.dart';

class Formulaire extends StatefulWidget {
  const Formulaire({Key? key}) : super(key: key);

  @override
  _Formulaire createState() => _Formulaire();
}

class _Formulaire extends State<Formulaire> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        children:  [
          // SizedBox(height: 14.0),

          // const SearchBar(),

        ],
      ),
    );
  }
}
