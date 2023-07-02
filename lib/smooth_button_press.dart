import 'package:flutter/material.dart';

class SmoothButtonPress extends StatefulWidget {
  const SmoothButtonPress({Key? key}) : super(key: key);

  @override
  State<SmoothButtonPress> createState() => _SmoothButtonPressState();
}

class _SmoothButtonPressState extends State<SmoothButtonPress> {

  bool isButtonPressed = false;

  void buttonPressed() {
    if (!isButtonPressed) {
      setState(() {
        isButtonPressed = true;
      });
    }
    else if (isButtonPressed) {
      setState(() {
        isButtonPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GestureDetector(
        onTap: buttonPressed,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 160,
            width: 160,
            child: Icon(
              Icons.favorite,
              size: 60,
              color: isButtonPressed ? Colors.red[200] : Colors.red[400],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: isButtonPressed ? [] : [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(6, 6),
                  blurRadius: 15,
                  spreadRadius: 1
                ),
              ],
              border: Border.all(
                color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300
              )
            ),
          ),
        ),
      ),
    );
  }
}