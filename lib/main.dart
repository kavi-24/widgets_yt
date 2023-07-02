import 'package:flutter/material.dart';
import 'package:widgets_yt/spinnerz.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Spinnerz(),
      debugShowCheckedModeBanner: false,
    );
  }
}