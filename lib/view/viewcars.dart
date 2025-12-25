import 'package:flutter/material.dart';
import 'package:mvvmproject/model/cardmodel.dart';
import 'package:mvvmproject/view/cardview.dart';
import 'package:mvvmproject/viewmodel/cardviewmodel.dart';
import 'package:provider/provider.dart';

class ViewCards extends StatefulWidget {
  const ViewCards({super.key});

  @override
  State<ViewCards> createState() => _ViewCardsState();
}

class _ViewCardsState extends State<ViewCards> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<Cardviewmodel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: vm.tasks.length,
          itemBuilder: (context, index){
          return CardView(task:vm.tasks[index]);
          })
    );
  }
}
