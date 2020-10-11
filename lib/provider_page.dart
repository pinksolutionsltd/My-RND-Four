import 'package:flutter/material.dart';
import 'package:myrndfour/data_page.dart';
import 'package:myrndfour/received_data.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {

  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(providerData.val.toString(), style: TextStyle(fontSize: 34.0),),
            RaisedButton(
              child: Text('CLick',style: TextStyle(color: Colors.pink),),
              onPressed:(){
                setState(() {
                  providerData.Increment();
                });
              },
            ),



            Divider(height: 30.0,),
            RaisedButton(
              child: Text('Next=>', style: TextStyle(fontSize: 34.0),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReceivedData()),);
              },
            ),

          ],
        ),
      ),
    );
  }
}
