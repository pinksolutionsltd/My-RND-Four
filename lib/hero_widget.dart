import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myrndfour/second_page.dart';

class HeroWidgetPage extends StatefulWidget {
  @override
  _HeroWidgetPageState createState() => _HeroWidgetPageState();
}

class _HeroWidgetPageState extends State<HeroWidgetPage> {

  _showExitPopup(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('Confirmation'),
            content: Text('Do you wat to exit?'),
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
    },
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
          child: CircleAvatar(
            radius: 50.0,
            child: GestureDetector(
              child: Hero(
                tag: 'add',
                child: Icon(Icons.add_a_photo,
                size: 50.0,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
              },
            ),
          ),
        ),
      ),
    );
  }
}
