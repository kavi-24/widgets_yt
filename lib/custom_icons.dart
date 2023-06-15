import 'package:flutter/material.dart';

class CustomIcons extends StatefulWidget {
  CustomIcons({Key? key}) : super(key: key);

  @override
  State<CustomIcons> createState() => _CustomIconsState();
}

class _CustomIconsState extends State<CustomIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.near_me_sharp, size: 50, color: Colors.red,),
            Icon(Icons.chat, size: 50, color: Colors.blue[900],),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(12),
                child: Image.asset("../icons/airplane.png", color: Colors.white, width: 50, height: 50,),
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      )
    );
  }
}