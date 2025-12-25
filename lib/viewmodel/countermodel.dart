import 'package:flutter/material.dart';
import 'package:mvvmproject/model/counterdata.dart';

class Countermodel extends ChangeNotifier{
  Counterdata countermodel = Counterdata(0);
  int get count => countermodel.counter;
  void increment(){
    countermodel.counter++;
    notifyListeners();
  }
  void decrement(){
    countermodel.counter--;
    notifyListeners();
  }
}