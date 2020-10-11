import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
          crossAxisCount: 3,
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
