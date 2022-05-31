import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _Welcome createState() => _Welcome();
}


class _Welcome extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // TODO: implement build
    return  Container(
      color: Colors.white,
      child: Column(
        children: [

          //Bienvenue
          Padding(
            padding: const EdgeInsets.only(top:30.0,left:25.0,right:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Bienvenue',style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                )
                ),
                // SizedBox(width: 80.0,),
                // TextButton.icon(
                //     onPressed: (){},
                //     label: const Text('Options',style: TextStyle(color:Colors.blue)),
                //     icon: const Icon(Icons.settings,color:Colors.blue)
                // )
              ],
            ),
          ),

          //numéro
          Padding(
            padding: const EdgeInsets.only(top:15.0,left:20.0),
            child: Row(
              children: const [
                Icon(Icons.sim_card),
                Text('0101307394',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                )
                ),
              ],
            ),
          ),

          const SizedBox(height: 30.0),

          //searchbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  style: theme.textTheme.bodyText1,
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
          ),
        ],
      ),
    );
  }

}