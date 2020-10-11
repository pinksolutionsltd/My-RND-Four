import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrndfour/page_one.dart';
import 'package:myrndfour/page_three.dart';
import 'package:myrndfour/page_two.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [

            PageOne(),
            PageTwo(),
            PageThree(),
        ],
      ),
    );
  }
}
