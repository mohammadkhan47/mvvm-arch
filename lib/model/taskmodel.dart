import 'package:flutter/cupertino.dart';

class Taskmodel {
 final String title;
 final String subtitle;
 final double progress;
 final IconData icon;
 final Color color;
 Taskmodel
 ({
   required this.title,
   required this.subtitle,
   required this.progress,
   required this.icon,
   required this.color
 });
}