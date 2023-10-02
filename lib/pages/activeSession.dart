import 'package:flutter/material.dart';

class ActiveSession extends StatefulWidget {
  const ActiveSession({Key? key}) : super(key: key);

  @override
  State<ActiveSession> createState() => _ActiveSessionState();
}

class _ActiveSessionState extends State<ActiveSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff445D48),
        elevation: 0,
        title: Text('ACTIVE SESSION'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            SizedBox(height: 30,),
            Text('TIME LEFT OUT',style: TextStyle(color: Colors.black,fontSize: 30),),
            SizedBox(height: 10,),
            Text('1:20:00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50,),),
            SizedBox(height: 30,),

            Text('ZONE NUMBER',style: TextStyle(color: Colors.black,fontSize: 18),),
            Card(
              color: Color(0xffd0d0d0),
              elevation: 2,
              child: SizedBox(height: 25,width: 300,),
            ),
            SizedBox(height: 20,),

            Text('PASSENGER VEHICLE',style: TextStyle(color: Colors.black,fontSize: 18),),
            Card(
              color: Color(0xffd0d0d0),
              elevation: 2,
              child: SizedBox(height: 25,width: 300,),
            ),
            SizedBox(height: 20,),

            Text('TOTAL COST',style: TextStyle(color: Colors.black,fontSize: 18),),
            Card(
              color: Color(0xffd0d0d0),
              elevation: 2,
              child: SizedBox(height: 25,width: 300,),
            ),
            SizedBox(height: 20,),

            Text('PARKING REMAINDER',style: TextStyle(color: Colors.black,fontSize: 18),),
            Card(
              color: Color(0xffd0d0d0),
              elevation: 2,
              child: SizedBox(height: 25,width: 300,),
            ),
            SizedBox(height: 20,),

            Spacer(),

            ElevatedButton(
              onPressed: () {
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
                  'EXTEND TIME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
