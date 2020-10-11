import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GestureDetector(
            child: Hero(
              tag: 'add',
              child: Icon(Icons.add_a_photo,
                size: 200.0,color: Colors.pinkAccent,),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
