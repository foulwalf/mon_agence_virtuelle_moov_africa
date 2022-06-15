import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/constants.dart';
import '../Details/Details.dart';

class Telephones extends StatefulWidget {
  const Telephones({Key? key}) : super(key: key);

  @override
  _Telephones createState() => _Telephones();
}

class _Telephones extends State<Telephones> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {

          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const Details(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 190.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: secondaryColor,  // red as border color
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag: 'tag1',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0),
                                  child: Image.asset('assets/images/pictures/s21.jpg',height: 140),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 140,
                            ),
                            Text('Samsung Galaxy S21',textAlign: TextAlign.center,style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('550.000 FCFA',style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20
                                )),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}