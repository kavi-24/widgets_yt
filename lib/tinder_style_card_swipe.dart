import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

// Requires flutter_swipable package
class TinderStyleCardSwipe extends StatefulWidget {
  const TinderStyleCardSwipe({Key? key}) : super(key: key);

  @override
  State<TinderStyleCardSwipe> createState() => _TinderStyleCardSwipeState();
}

class _TinderStyleCardSwipeState extends State<TinderStyleCardSwipe> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 200,
          child: Stack(
            children: [
              TinderCard(color: Colors.blue),
              TinderCard(color: Colors.deepOrange),
              TinderCard(color: Colors.green),
              TinderCard(color: Colors.red),
              TinderCard(color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}

class TinderCard extends StatelessWidget {
  
  final Color color;

  const TinderCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      onSwipeLeft: (position) {
        print("User swiped left");
      },
      onSwipeRight: (position) {
        print("User swiped right");
      },
      onSwipeUp: (position) {
        print("User swiped up");
      },
      onSwipeDown: (position) {
        print("User swiped down");
      },
      child: Container(
        color: color,
      ),
    );
  }
}