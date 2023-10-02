import 'package:drivestop/pages/signupPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'navigationPage.dart'; // Replace with the actual import path for your SignupPage

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'W E L C O M E   B A C K!',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
                child: Text(
                  'Glad to see you! Enter your email and password to login to your account.',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffcdcdcd),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
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
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();

                  if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please fill in all fields."),
                      ),
                    );
                    return;
                  }

                  try {
                    final userCredential = await _auth.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );

                    if (userCredential.user != null) {
                      final userId = userCredential.user!.uid;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigationPage(userId: userId),
                        ),
                      );
                    }
                  } catch (e) {
                    String errorMessage = "An error occurred. Please try again.";

                    if (e is FirebaseAuthException) {
                      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
                        errorMessage = "Incorrect email or password.";
                      } else if (e.code == 'invalid-email') {
                        errorMessage = "Invalid email format.";
                      }
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(errorMessage),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff445D48),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(width: 8.0),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'OR',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle Google Sign-In here
                  // You can implement Google Sign-In using Firebase or any other method
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffececec),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage('assets/googleIcon.png'), width: 20, height: 20),
                      SizedBox(width: 10),
                      Text(
                        'LOGIN WITH GOOGLE',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(width: 8.0),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Text(
                  "Signup",
                  style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
