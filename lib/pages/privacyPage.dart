import 'package:drivestop/pages/deletePage.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Privacy & Sharing',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Text('Manage your account data',style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('You can manage your activites as '
                  'well as edit and deleting data',style: TextStyle(color: Colors.blueGrey,fontSize: 18),
              softWrap: true,
              ),

              Spacer(),

              Card(
                //elevation: 10,
                color: Color(0xffdcdcdc),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text('Delete your account',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('By doing this, your account and its data will be '
                          'deleted permenantly',style: TextStyle(color: Colors.black,fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => DeletePage(),
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
                    ],
                  ),
                ),
              ),

              Spacer(),
              Spacer(),

              Row(
                children: [
                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.navigate_before_rounded)),
                  Text('Back',style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
