import 'package:drivestop/pages/activeSession.dart';
import 'package:drivestop/pages/activities.dart';
import 'package:drivestop/pages/promotionsPage.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/maps.png'),
                  height: 550,
                  width: 410,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.directions,size: 40,color: Colors.blue,)),
                  Text('Direction',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.location_pin,size: 40,color: Colors.pink,)),
                    Text('Point',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.cancel,size: 40,color: Colors.red,)),
                    Text('Cancel',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 40, color: Colors.teal,)),
                    Text('Share',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                  ],
                ),

              ],
            ),

          ]
        ),
      ),
    );
  }
}
