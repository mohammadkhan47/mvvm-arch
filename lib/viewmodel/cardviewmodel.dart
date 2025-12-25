import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:mvvmproject/model/cardmodel.dart';

class Cardviewmodel extends ChangeNotifier{
  final List<Cardmodel> _task = [
    Cardmodel(
        title: 'ui design',
        description: 'mvvm setup',
        progress: 0.5
    ),
    Cardmodel(
        title: 'ui design',
        description: 'firebase setup',
        progress: 0.4
    ),
  ];
  List<Cardmodel> get tasks => _task;
  @override
  notifyListeners();
}
