import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Text('Delete your account',style: TextStyle(color: Colors.black,fontSize: 30),),
                SizedBox(height: 30,),
                Text('Why are you deleting this account?',style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Rounded edges
                    color: Color(0xFFC7C7C7), // Light gray background color
                  ),
                  child: TextField(
                    maxLines: 10, // Set the maximum number of lines
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Please tell us your reason...',
                      border: InputBorder.none, // Remove border color
                    ),
                    style: TextStyle(color: Colors.black), // Text color
                  ),
                ),

                SizedBox(height: 30,),

                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE0E0E0),
                    //fixedSize: Size(250, 100),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.delete,color: Colors.red,),
                        Text(
                          'DELETE ACCOUNT',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.navigate_before_rounded)),
                    Text('Back',style: TextStyle(color: Colors.black,fontSize: 20),),
                  ],
                ),
                
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
