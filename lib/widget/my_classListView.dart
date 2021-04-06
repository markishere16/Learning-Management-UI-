import 'package:flutter/material.dart';

class MyClassList extends StatefulWidget {
  MyClassList({Key key}) : super(key: key);

  @override
  _MyClassListState createState() => _MyClassListState();
}

class _MyClassListState extends State<MyClassList> {
  var colors = [
    Colors.blueAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
  ];
  var subject_list = [
    {
      'code': 'IT 211',
      'description': 'Information Technology',
    },
    {
      'code': 'APP DEV 1',
      'description': 'Mobile Developement',
    },
    {
      'code': 'GEC 9',
      'description': 'Rizal Works',
    },
    {
      'code': 'GEC 2',
      'description': 'Physical Education',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subjects',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Your list of active subjects',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 120.0,
          child: ListView.builder(
            itemCount: subject_list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 140.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors[index],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          subject_list[index]['code'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          subject_list[index]['description'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    ));
  }
}
