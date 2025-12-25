import 'package:flutter/material.dart';
import 'package:mvvmproject/model/taskmodel.dart';
import 'package:mvvmproject/view/taskview.dart';
import 'package:mvvmproject/viewmodel/taskviewmodel.dart';
import 'package:provider/provider.dart';

class Viewtaskscreen extends StatefulWidget {
  const Viewtaskscreen({super.key});

  @override
  State<Viewtaskscreen> createState() => _ViewtaskscreenState();
}

class _ViewtaskscreenState extends State<Viewtaskscreen> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<Taskviewmodel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Card view Scree'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: vm.task.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.9
            ),
            itemBuilder: (context,index){
            return Taskview(task: vm.task[index]);
            }
        ),
      ),
    );
  }
}
