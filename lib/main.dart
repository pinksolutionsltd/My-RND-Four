import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myrndfour/card_page.dart';
import 'package:myrndfour/pageview_page.dart';
import 'package:myrndfour/provider_page.dart';
import 'package:myrndfour/sliver_appbar.dart';
import 'package:myrndfour/stack_position_floatingaction.dart';
import 'package:myrndfour/tabbar_page.dart';

import 'bottom_navigation.dart';
import 'data_page.dart';
import 'expanded_widget.dart';
import 'gridview_page.dart';
import 'hero_widget.dart';
import 'liquid_swipe.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Data>(
          create: (context) => Data(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

//      home: ProviderPage(),

//    home: LiquidSwipeOne(),
//    home: StackPositionFloatingAction(),
//    home: CardPage(),
//    home: GridViewPage(),
//    home: ExpandedWidgetPage(),
//    home: PageViewPage(),
//    home: HeroWidgetPage(),
    home: BottomNavigation(),
//    home: TabBarPage(),
//    home: SliverAppBarPage(),
      ),
    );
  }
}
