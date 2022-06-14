import 'package:flutter/material.dart';

class Titles extends StatefulWidget {
  const Titles({Key? key}) : super(key: key);

  @override
  _Titles createState() => _Titles();
}


class _Titles extends State<Titles> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        const Text('Moov Events',style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        )
        ),
        TextButton(
          onPressed: () {
            print('je suis la');
          },
          child: const Text('Voir Plus',style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }

}