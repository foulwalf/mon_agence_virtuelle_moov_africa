import 'package:flutter/material.dart';

class containerEvent extends StatefulWidget {
  const containerEvent({Key? key}) : super(key: key);

  @override
  _containerEvent createState() => _containerEvent();
}


class _containerEvent extends State<containerEvent> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right:10.0),
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/6,
        // color: Colors.transparent,
        decoration:  const BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(12.0)),
          image: DecorationImage(
            image: AssetImage("assets/images/services-vas.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text('Bonus a gogo tous les vendredis',style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w900
            )
            ),

          ],
        ),
      ),
    );
  }

}