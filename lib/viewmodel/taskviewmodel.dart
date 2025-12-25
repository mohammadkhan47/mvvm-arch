import 'package:flutter/material.dart';
import 'package:mvvmproject/model/taskmodel.dart';

class Taskviewmodel extends ChangeNotifier{
   final List<Taskmodel> _task = [
     Taskmodel(title: 'Ui Design', subtitle: 'crete dashboard Ui', progress: 0.8, icon: Icons.brunch_dining_sharp, color: Colors.green),
     Taskmodel(title: 'Auth & firebase', subtitle: 'firebase api call', progress: 0.7, icon: Icons.safety_check, color: Colors.orangeAccent),
     Taskmodel(title: 'Data analysis', subtitle: 'generate graphs', progress: 0.5, icon: Icons.security, color: Colors.deepPurpleAccent),
     Taskmodel(title: 'write documents', subtitle: 'add comment', progress: 0.6, icon: Icons.back_hand_rounded, color: Colors.redAccent),
   ];
   List<Taskmodel> get task => _task;


}