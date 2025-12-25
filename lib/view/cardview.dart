import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mvvmproject/model/cardmodel.dart';
import 'package:provider/provider.dart';

class CardView extends StatelessWidget {
  final Cardmodel task;
  const CardView({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Text(task.description),
              SizedBox(height: 12),
              LinearProgressIndicator(
                value: task.progress,
              ),
            ],
          ),
        ),
    );
  }
}
