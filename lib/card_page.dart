import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  _showExitPopup(){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('Confirm'),
          content: Text('Do You want to exit?'),
          actions: [
            RaisedButton(
              child: Text('No'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),

            RaisedButton(
              child: Text('Yes'),
              onPressed: (){
                SystemNavigator.pop();
              },
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        _showExitPopup();
      },
      child: Scaffold(
        body: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,
              child: Image.asset('images/myimage.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}
