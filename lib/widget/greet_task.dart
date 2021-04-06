import 'package:flutter/material.dart';
import 'package:lms/config/palette.dart';

class WelcomeTask extends StatefulWidget {
  WelcomeTask({Key key}) : super(key: key);

  @override
  _WelcomeTaskState createState() => _WelcomeTaskState();
}

class _WelcomeTaskState extends State<WelcomeTask> {
  var task = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Mark!',
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'You\'ve got',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$task tasks today',
            style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                color: Palette.lms_blue),
          )
        ],
      ),
    );
  }
}
