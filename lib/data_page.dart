import 'package:flutter/material.dart';

class Data extends ChangeNotifier{

  int val = 0;

  Increment(){
    val ++;
    notifyListeners();
  }
}