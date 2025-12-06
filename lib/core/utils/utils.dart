import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context,
      FocusNode current,
      FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 15,
      toastLength: Toast.LENGTH_LONG,

    );
  }
  static void FlashbarError(String message, BuildContext context){
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          borderRadius: BorderRadius.circular(15),
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.all(15),
          backgroundColor: Colors.black,
          title: 'no internet',
          messageColor: Colors.blue,
          animationDuration: Duration(seconds: 5),
          icon: Icon(Icons.error,color: Colors.red,),
          duration: Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.BOTTOM,
        )..show(context),
    );
  }
}