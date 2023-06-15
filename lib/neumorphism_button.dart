import 'package:flutter/material.dart';

class NeumorphismButton extends StatelessWidget {
  const NeumorphismButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: NewButton(),
      ),
    );
  }
}

class NewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        shape: BoxShape.circle,
        boxShadow: [
          // dark shadow at bottom right
          BoxShadow(
          color: Colors.deepPurple.shade700,
          offset: Offset(4, 4),
          blurRadius: 15,
          ),
          // light shadow at top left
          BoxShadow(
            color: Colors.deepPurple.shade200,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400
          ],
          stops: [
            0.1,
            0.9,
          ]
        )
      ),
    );
  }
}