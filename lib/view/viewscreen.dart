import 'package:flutter/material.dart';
import 'package:mvvmproject/core/res/colors.dart';
import 'package:mvvmproject/viewmodel/countermodel.dart';
import 'package:provider/provider.dart';

class Viewscreen extends StatefulWidget {
  const Viewscreen({super.key});

  @override
  State<Viewscreen> createState() => _ViewscreenState();
}

class _ViewscreenState extends State<Viewscreen> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<Countermodel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('counter app'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(vm.count.toString()),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                vm.increment();
              },
                  child: Icon(Icons.add)),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){
                vm.decrement();
              },
                  child: Icon(Icons.remove)),
            ],
          )
        ],
      )
    );
  }
}
