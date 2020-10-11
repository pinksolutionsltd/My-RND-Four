import 'package:flutter/material.dart';
import 'package:myrndfour/page_one.dart';
import 'package:myrndfour/page_two.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.account_circle),),
            Tab(icon: Icon(Icons.message),),
          ]),
        ),

        body: TabBarView(children: [
          PageOne(),
          PageTwo(),
        ]),
      ),
    );
  }
}
