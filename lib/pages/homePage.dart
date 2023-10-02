import 'package:drivestop/pages/loginPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300.0, // Adjust the width as needed
              height: 350.0, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(10, 3), // Shadow offset
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Same radius as the BoxDecoration
                child: Image(
                  image: AssetImage('assets/parkingpic.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            SizedBox(height: 28,),
            Text('W E L C O M E',style: TextStyle(color: Color(0xff445D48),fontWeight: FontWeight.bold,fontSize: 40,),),
            SizedBox(height: 10,),
            Text(
              'TO THE NEXT PARKING ASSISTANCE APP',
              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold), // Adjust the font size as needed
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                // Add your button's functionality here
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
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
                primary: Color(0xff445D48), // Background color
                onPrimary: Colors.white,   // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0), // Adjust the radius as needed
                ),
                padding: EdgeInsets.all(20.0), // Padding
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                  ),

                  SizedBox(width: 8.0), // Space between icon and text

                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
