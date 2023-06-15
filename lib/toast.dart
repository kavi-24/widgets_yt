import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Requires fluttertoast package

class MyToast extends StatelessWidget {
  const MyToast({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Button"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showToast(
              msg: "Hey. I am a toast",
              backgroundColor: Colors.red,
              textColor: Colors.white
            );
          },
          child: Text("Show Toast", style: TextStyle(
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}

Future showToast({
  required String msg,
  Color? backgroundColor,
  Color? textColor,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.CENTER,
    backgroundColor: backgroundColor,
    textColor: textColor
  );
}