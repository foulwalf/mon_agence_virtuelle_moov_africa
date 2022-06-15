import 'package:flutter/material.dart';

class PostPaids extends StatefulWidget {
  const PostPaids({Key? key}) : super(key: key);

  @override
  _PostPaids createState() => _PostPaids();
}

class _PostPaids extends State<PostPaids> {

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
