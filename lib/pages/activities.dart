import 'package:drivestop/custom_widgets/activityCard.dart';
import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff445D48),
        elevation: 0,
        title: Text('ACTIVITIES'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            ActivityCard(title: 'Arpico', location: 'Union Place', date: '11/19'),
            ActivityCard(title: 'Town Hall', location: 'Union Place', date: '21/12'),
            ActivityCard(title: 'Bambalapitiya MC', location: 'Bambalapitiya', date: '22/4'),
            ActivityCard(title: 'Food City', location: 'Dehiwala', date: '7/30'),
            ActivityCard(title: 'GYM POWER WORD', location: 'Rajagiriya', date: '12/19'),
            ActivityCard(title: 'City Center', location: 'Union Place', date: '1/29')
          ],
        ),
      ),
    );
  }
}
