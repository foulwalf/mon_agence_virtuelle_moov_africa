import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

///pile permettant de positionner les élément de base de la page de connexion
///de sorte à donner un efffet d'arrière plan
class OtpScreenBackground extends StatelessWidget {
  final Widget child;
  const OtpScreenBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          //le cercle bleu
          const Positioned(
            top: -300,
            left: -300,
            child: Image(
              image: AssetImage("assets/images/bg/mix_of_circle.png"),
            ),
          ),
          //la barre bleue
          const Positioned(
            top: 70,
            right: -200,
            child: Image(
              image: AssetImage("assets/images/bg/blue_border_rectangle.png"),
            ),
          ),
          //les triangles du bas
          const Positioned(
            bottom: -350,
            left: -300,
            child: Image(
              image: AssetImage("assets/images/bg/4_rectangles_top_blue.png"),
            ),
          ),
          //white sheet
          Container(
            height: size.height,
            width: double.infinity,
            decoration: BoxDecoration(color: white.withOpacity(.3)),
          ),
          //flou
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          //   child: Container(
          //     height: size.height,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
