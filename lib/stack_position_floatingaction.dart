import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StackPositionFloatingAction extends StatefulWidget {
  @override
  _StackPositionFloatingActionState createState() => _StackPositionFloatingActionState();
}

class _StackPositionFloatingActionState extends State<StackPositionFloatingAction> {

  _showExitPopup(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('Confirmation'),
            content: Text('Do you want to exit?'),
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
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/4,
                color: Colors.amber,
              ),
              Positioned(
                bottom: -100,
                  child: CircleAvatar(radius: 50,),
              ),
              Positioned(
                child: CircleAvatar(radius: 50,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
