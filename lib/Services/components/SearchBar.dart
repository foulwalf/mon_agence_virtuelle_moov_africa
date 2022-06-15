import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {

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
