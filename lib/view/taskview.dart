import 'package:flutter/material.dart';
import 'package:mvvmproject/model/taskmodel.dart';

class Taskview extends StatelessWidget {
  final Taskmodel task;
  const Taskview({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            offset: Offset(0, 6)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: task.color.withOpacity(0.15),
            ),
            child: Icon(task.icon,color: task.color,size: 28,),
          ),
          SizedBox(height: 12),
          Text(
            task.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 4),

          // Subtitle
          Text(
            task.subtitle,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: task.progress,
              minHeight: 8,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation(task.color),
            ),
          ),
          SizedBox(height: 6),
          Align(
            alignment: Alignment.centerRight,
            child: Text("${(task.progress*100).toInt()}%",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
