import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  final String title;
  final String location;
  final String date;
  const ActivityCard({Key? key, required this.title, required this.location, required this.date}) : super(key: key);

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffd4d4d4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.lens_rounded,color: Colors.blueGrey,),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.title,style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('Location: '),
                    Text(widget.location),
                  ],
                ),
              ],
            ),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Text(widget.date),
          ],
        ),
      ),
    );
  }
}
