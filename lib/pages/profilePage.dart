import 'package:drivestop/pages/paymentPage.dart';
import 'package:drivestop/pages/personalInfo.dart';
import 'package:drivestop/pages/privacyPage.dart';
import 'package:drivestop/pages/settingsPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'loginPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? displayName = '';
  String? vehicleNo = '';

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    final User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      final userId = currentUser.uid;
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      setState(() {
        displayName = userData['displayName'];
        vehicleNo = userData['vehicleNo'];
      });
    }
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xff445D48),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            displayName ?? 'Display Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Vehicle Number: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            vehicleNo ?? 'Vehicle Number',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  elevation: 3,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person,size: 30,),
                      Text('Personal Info',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => PersonalInfoPage(),
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
                      }, icon: Icon(Icons.navigate_next)),
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
                      Icon(Icons.payment,size: 30,),
                      Text('Payment Methods',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => PaymentPage(),
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

                      }, icon: Icon(Icons.navigate_next)),
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
                      Icon(Icons.lock,size: 30,),
                      Text('Privacy & Sharing',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => PrivacyPage(),
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
                      }, icon: Icon(Icons.navigate_next)),
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
                      Icon(Icons.settings,size: 30,),
                      Text('Settings',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
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

                      }, icon: Icon(Icons.navigate_next)),
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
                      Icon(Icons.logout,size: 30,color: Colors.red,),
                      Text('Logout',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        _signOut(context);
                      }, icon: Icon(Icons.navigate_next,color: Colors.red,)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
