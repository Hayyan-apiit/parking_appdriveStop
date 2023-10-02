import 'package:drivestop/pages/accountDetails.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('S I G N U P',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 26,vertical: 20),
                  child: Text('welcome! Please enter your'
                      'name email and password to '
                      'signup',style: TextStyle(color: Colors.black,fontSize: 15,),softWrap: true,textAlign: TextAlign.start,),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcdcdcd), // Background color
                      borderRadius: BorderRadius.circular(40.0), // Rounded edges
                    ),
                    padding: EdgeInsets.all(10.0), // Padding within the container
                    child: TextField(
                      style: TextStyle(color: Colors.black), // Text color
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the default border
                        hintText: 'Full Name', // Placeholder text
                        hintStyle: TextStyle(color: Colors.black), // Placeholder text color
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcdcdcd), // Background color
                      borderRadius: BorderRadius.circular(40.0), // Rounded edges
                    ),
                    padding: EdgeInsets.all(10.0), // Padding within the container
                    child: TextField(
                      style: TextStyle(color: Colors.black), // Text color
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the default border
                        hintText: 'Email Address', // Placeholder text
                        hintStyle: TextStyle(color: Colors.black), // Placeholder text color
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 10,),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcdcdcd), // Background color
                      borderRadius: BorderRadius.circular(40.0), // Rounded edges
                    ),
                    padding: EdgeInsets.all(10.0), // Padding within the container
                    child: TextField(
                      style: TextStyle(color: Colors.black), // Text color
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the default border
                        hintText: 'Password', // Placeholder text
                        hintStyle: TextStyle(color: Colors.black), // Placeholder text color
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,),
                  child: Row(
                    children: [
                      Text('Select Option',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcdcdcd), // Background color
                      borderRadius: BorderRadius.circular(40.0), // Rounded edges
                    ),
                    padding: EdgeInsets.all(10.0), // Padding within the container
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 95),
                      child: DropdownButton<String>(
                        value: 'Land Owners', // Default selected value
                        onChanged: (String? newValue) {
                          // Handle the selection of a new option
                          if (newValue != null) {
                            print('Selected: $newValue');
                          }
                        },
                        underline: Container(), // Removes the underline beneath the dropdown button
                        items: <String>['Land Owners', 'Option 2', 'Option 3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black), // Text color
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: () {
                    // Add your button's functionality here
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => AccountDetailsPage(),
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

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          'ACCOUNT DETAILS',
                          style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                        ),
                      ),

                      SizedBox(width: 8.0), // Space between icon and text

                    ],
                  ),
                ),

                SizedBox(height: 10,),

                SizedBox(height: 30,),
                Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 17),),
                GestureDetector(
                  onTap: () {
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
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
