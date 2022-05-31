import 'package:flutter/material.dart';
import 'package:mon_agence_virtuelle_moov_africa/shared_components/constants.dart';


///génère un contaainer déjà stylisé pour recevoir un textfield
class TextFieldContainerGenerator extends StatelessWidget {
  final Widget child;
  const TextFieldContainerGenerator({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 60,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: primaryColorShade4,
        borderRadius: BorderRadius.circular(6),
        /* boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 2),
            blurRadius: 5,
          )
        ], */
      ),
      child: child,
    );
  }
}
