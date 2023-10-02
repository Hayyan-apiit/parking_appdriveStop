import 'package:drivestop/pages/locationView.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[

          Expanded(child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/map.png')),
            ],
          )),

          Expanded(child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xffcdcdcd),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Arpico',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                              Text('Union Place - Colombo 09',style: TextStyle(fontSize: 18),),
                              IconButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => LocationViewPage(),
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
                              }, icon: Icon(Icons.navigate_next,color: Colors.blue,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xffcdcdcd),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Municiple Council',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                              Text('Union Place - Colombo 09',style: TextStyle(fontSize: 18),),
                              IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next,color: Colors.blue,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xffcdcdcd),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Town Hall',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                              Text('Union Place - Colombo 09',style: TextStyle(fontSize: 18),),
                              IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next,color: Colors.blue,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



              ],
            ),
          )),
        ],),
      ),
    );
  }
}
