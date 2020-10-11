import 'package:flutter/material.dart';


class ExpandedWidgetPage extends StatefulWidget {
  @override
  _ExpandedWidgetPageState createState() => _ExpandedWidgetPageState();
}

class _ExpandedWidgetPageState extends State<ExpandedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              color: Colors.teal,
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.indigoAccent,
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
