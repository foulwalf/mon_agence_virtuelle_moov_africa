import 'package:flutter/material.dart';

class Reclamations extends StatefulWidget {
  const Reclamations({Key? key}) : super(key: key);

  @override
  _Reclamations createState() => _Reclamations();
}

class _Reclamations extends State<Reclamations> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
          width: double.infinity,
          height: 60,
          child: TextField(
            // style: theme.textTheme.bodyText1,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.only(top:1.0,left:10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Que recherchez vous?",
                fillColor: Colors.grey.shade300
            ),
          )
      ),
    );
  }
}
