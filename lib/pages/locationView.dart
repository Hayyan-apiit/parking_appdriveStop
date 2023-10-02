import 'package:drivestop/pages/activeSession.dart';
import 'package:drivestop/pages/activities.dart';
import 'package:flutter/material.dart';

class LocationViewPage extends StatefulWidget {
  const LocationViewPage({Key? key}) : super(key: key);

  @override
  State<LocationViewPage> createState() => _LocationViewPageState();
}

class _LocationViewPageState extends State<LocationViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Arpico - Union Place, Col-09'),
  backgroundColor: Color(0xff445D48),
  elevation: 0,
),

    body: Column(
      children: <Widget>[
        Image(image: AssetImage('assets/arpico.jpg')),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffcdcdcd),
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Parking Space',
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffcdcdcd),
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Hours',
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffcdcdcd),
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cost On Hours',
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffcdcdcd),
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Zone Number',
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),

        SizedBox(height: 20,),

        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => ActiveSession(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff445D48),
            //fixedSize: Size(250, 100),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'RESERVE PARKING',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),


      ],
    ),
    );
  }
}
