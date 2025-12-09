import 'package:flutter/material.dart';
import 'package:mvvmproject/core/res/colors.dart';

class Roundbutton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onpress;
  const Roundbutton({super.key, required this.title, this.loading = false, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onpress,
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.ButtonColor,
        ),
        child: Center(
          child: loading ? CircleAvatar() : Text(title,style: TextStyle(
            color: AppColors.whitecolor,
          ),),
        ),
      ),
    );
  }
}
