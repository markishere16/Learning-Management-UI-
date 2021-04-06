import 'package:flutter/material.dart';
import 'package:lms/screen/home_screen.dart';

class Nav extends StatefulWidget {
  Nav({Key key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;

  final widgetOptions = [
    HomeScreen(),
    Center(
      child: Text('bookmark'),
    ),
    Center(
      child: Text('home'),
    ),
    Center(
      child: Text('home'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

//  Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: widgetOptions.elementAt(selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: 'Explore',
//             //  backgroundColor: Colors.blue,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Bookmark',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           )
//         ],
//         currentIndex: selectedIndex,
//         fixedColor: Colors.blue,
//         onTap: (index) {
//           setState(() {
//             selectedIndex = index;
//             print(selectedIndex);
//           });
//         },
//       ),
//     );
//   }
