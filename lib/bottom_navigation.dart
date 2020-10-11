import 'package:flutter/material.dart';
import 'package:myrndfour/page_four.dart';
import 'package:myrndfour/page_one.dart';
import 'package:myrndfour/page_three.dart';
import 'package:myrndfour/page_two.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  var _currentIndex = 0;
  final pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        items: [

        BottomNavigationBarItem(
          backgroundColor: Colors.pinkAccent,
          icon: Icon(Icons.message),
          title: Text('Message'),
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.pinkAccent,
          icon: Icon(Icons.call),
          title: Text('Call'),
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.pinkAccent,
          icon: Icon(Icons.pan_tool),
          title: Text('Pan Tool'),
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.pinkAccent,
          icon: Icon(Icons.radio),
          title: Text('Radio'),
        ),

      ],
      onTap: (index){
          setState(() {
            _currentIndex = index;
          });
      },
      ),
      body: pages[_currentIndex],
    );
  }
}
