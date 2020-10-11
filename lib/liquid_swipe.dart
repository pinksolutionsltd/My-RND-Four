import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeOne extends StatefulWidget {
  @override
  _LiquidSwipeOneState createState() => _LiquidSwipeOneState();
}

class _LiquidSwipeOneState extends State<LiquidSwipeOne> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.amber,
        child: Center(
            child: Icon(
          Icons.phone,
          size: 100.0,
          color: Colors.pink,
        )),
      ),
      Container(
        color: Colors.purple,
        child: Center(
            child: Icon(
          Icons.phone,
          size: 100.0,
          color: Colors.pink,
        )),
      ),
      Container(
        color: Colors.indigoAccent,
        child: Center(
            child: Icon(
          Icons.phone,
          size: 100.0,
          color: Colors.pink,
        )),
      ),
      Container(
        color: Colors.green,
        child: Center(
            child: Icon(
          Icons.phone,
          size: 100.0,
          color: Colors.pink,
        )),
      ),
    ];

    return Scaffold(
      body: LiquidSwipe(pages: pages),
    );
  }
}
