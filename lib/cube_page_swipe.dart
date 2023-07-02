import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CubePageSwipe extends StatelessWidget {
  const CubePageSwipe({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(

        items: [
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.deepPurple,
          ),
        ],
        options: CarouselOptions(
          
        ),
      ),
    );
  }
}