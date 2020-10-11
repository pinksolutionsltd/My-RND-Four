import 'package:flutter/material.dart';
import 'package:myrndfour/data_page.dart';
import 'package:provider/provider.dart';
class ReceivedData extends StatefulWidget {
  @override
  _ReceivedDataState createState() => _ReceivedDataState();
}

class _ReceivedDataState extends State<ReceivedData> {
  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Data>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(providerData.val.toString(), style: TextStyle(fontSize: 30, color: Colors.red),),
            RaisedButton(
              child: Text('CLick',style: TextStyle(color: Colors.pink),),
              onPressed:(){
                setState(() {
                  providerData.Increment();
                });
              },
            ),

            Divider(height: 20.0,),
            RaisedButton(
              child: Text('Back', style: TextStyle(fontSize: 28.0, color: Colors.teal),),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
