import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



Widget loginToastMessage(){

      Fluttertoast.showToast(
        msg: "You have pushed the buttontime.",
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIos: 1,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.indigo,
      );


}