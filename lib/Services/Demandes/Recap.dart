import 'package:flutter/material.dart';
import './components/Dropdown.dart';

class Recap extends StatefulWidget {
  const Recap({Key? key}) : super(key: key);

  @override
  _Recap createState() => _Recap();
}

class _Recap extends State<Recap> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: 50,
            ),
              Dropdown()
          ],
        ),
      ),
    );
  }


}
