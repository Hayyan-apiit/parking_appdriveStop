import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff445D48),
        title: Text('SETTINGS'),
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 10,),
        ],
      ),


      body: Column(
        children: <Widget>[

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 3,
              child: Row(
                children: <Widget>[
                 Icon(Icons.notifications_active,size: 30,),
                  Text('Notifications',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 3,
              child: Row(
                children: <Widget>[
                  Icon(Icons.dark_mode,size: 30,),
                  Text('Dark Mode',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Spacer(),
                  //IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                  Switch(value: false, onChanged: (value) => (){setState(() {
                    value=false;
                  });},),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 3,
              child: Row(
                children: <Widget>[
                  Icon(Icons.accessibility,size: 30,),
                  Text('Edit Accessibility',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 3,
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle_rounded,size: 30,),
                  Text('About Us',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                ],
              ),
            ),
          ),

        ],

      ),
    );
  }
}
