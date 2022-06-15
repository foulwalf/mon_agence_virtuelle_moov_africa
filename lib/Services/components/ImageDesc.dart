import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared_components/vertical_spacer_generator.dart';

class ImageDesc extends StatefulWidget {
  const ImageDesc({Key? key}) : super(key: key);

  @override
  _ImageDesc createState() => _ImageDesc();
}

class _ImageDesc extends State<ImageDesc> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        margin:  const EdgeInsets.symmetric(
          horizontal: defaultSpace / 2,
          vertical: defaultSpace,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultSpace,
          vertical: defaultSpace * 1.5,
        ),
        height: size.height * .3,
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: blueBoxShadows,
          image: const DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage('assets/images/pictures/4g.jpg'),
              fit: BoxFit.fitWidth
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Service Client',
                  style: theme.headline6?.copyWith(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Text(
                'Faites vos réclamations, accédez aux demandes ',
                style: theme.headline6?.copyWith(
                    color: white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            VerticalSpacerGenerator(
              height: 5,
            ),

          ],
        ),
      ),
    );
  }
}
