import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _Details createState() => _Details();
}

class _Details extends State<Details> {

  List<int> list = [1, 2, 3, 4, 5];
  int value=0;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: 'tag1',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: CarouselSlider(
                          items: list
                              .map((item) => Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/pictures/moov_fibre.PNG'))
                            ),

                          )) .toList(),
                          options: CarouselOptions(
                            autoPlay: false,
                            disableCenter: false,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.arrowDownWideShort),
                            iconSize: 25.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'tag1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Row(
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15.0,
                            color: Colors.white70,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'civ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const Padding(padding: EdgeInsets.only(top:15.0)),
            const Text("""Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. """,style: TextStyle(
                fontSize: 20.0
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right:25.0,top:20.0,bottom:8.0),
              child: Container(
                  width: double.infinity,
                  height: 60,
                  child: TextField(
                    controller: myController,
                  keyboardType:TextInputType.number,
                    onChanged: (String str){
                      setState((){
                        value=int.parse(str);
                      });
                    },
                    style: theme.textTheme.bodyText1,
                    decoration: InputDecoration(
                        prefixIcon: IconButton(icon: const Icon(Icons.remove), onPressed: () {
                          setState((){
                            setState((){
                              value-=1;
                            });
                            if(value>0){
                              myController.text=(value-1).toString();
                            }
                          });
                        },),
                        suffixIcon: IconButton(icon: const FaIcon(FontAwesomeIcons.plus), onPressed: () {
                          setState((){
                            value+=1;
                          });
                          myController.text=(value).toString();
                        },),
                        contentPadding: const EdgeInsets.only(top:1.0,left:10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Quantité",
                        fillColor: Colors.grey.shade300
                    ),
                  ),
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: Text('Acheter'),
              onPressed: () {},
            ),
           const SizedBox(height: 10.0)
          ],
        ),
      ),
    );
  }

}