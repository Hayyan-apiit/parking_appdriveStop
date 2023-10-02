import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff445D48),
        elevation: 0,
        title: Text('PERSONAL INFO'),
        actions: [
          Icon(Icons.account_circle_rounded),
          SizedBox(width: 10,),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Row(
                children: [
                  Text('Name:'),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Hayyan Ameen',
                          hintStyle: TextStyle(color: Colors.black), // Hint text color
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Add your edit icon functionality here
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Location:'),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Sri Lanka - Colombo',
                          hintStyle: TextStyle(color: Colors.black), // Hint text color
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Add your edit icon functionality here
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Address:'),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '388 Union Pl, Colombo 00200',
                          hintStyle: TextStyle(color: Colors.black), // Hint text color
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Add your edit icon functionality here
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Phone No.:'),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '072 134 4573',
                          hintStyle: TextStyle(color: Colors.black), // Hint text color
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Add your edit icon functionality here
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text('E-mail:'),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'vehicle@gmail.com',
                          hintStyle: TextStyle(color: Colors.black), // Hint text color
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Add your edit icon functionality here
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

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
                    'DONE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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
