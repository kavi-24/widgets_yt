import 'package:flutter/material.dart';

class TikTokStyleSwipe extends StatefulWidget {
  TikTokStyleSwipe({Key? key}) : super(key: key);

  @override
  State<TikTokStyleSwipe> createState() => _TikTokStyleSwipeState();
}

class _TikTokStyleSwipeState extends State<TikTokStyleSwipe> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Posts(color: Colors.deepPurple),
          Posts(color: Colors.green,),
          Posts(color: Colors.red),
          Posts(color: Colors.deepPurple),
          Posts(color: Colors.green,),
          Posts(color: Colors.red),
          Posts(color: Colors.deepPurple),
          Posts(color: Colors.green,),
          Posts(color: Colors.red),
          Posts(color: Colors.deepPurple),
          Posts(color: Colors.green,),
          Posts(color: Colors.red),
        ],
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  
  final Color color;
  Posts({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
    );
  }
}