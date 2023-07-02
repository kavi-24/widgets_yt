import 'package:flutter/material.dart';

class TikTokStyleSwipe extends StatefulWidget {
  const TikTokStyleSwipe({Key? key}) : super(key: key);

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
        children: const [
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
        physics: const ScrollPhysics(),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  
  final Color color;
  const Posts({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
    );
  }
}