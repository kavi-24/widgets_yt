import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Required smooth_page_indicator package

class SmoothDotIndicator extends StatelessWidget {
  
  final _controller = PageController();

  SmoothDotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              physics: const ScrollPhysics(),
              children: const [
                MyPage(),
                MyPage(),
                MyPage(),
                MyPage(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: 
            JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                verticalOffset: 50, //jumping height
                jumpScale: 5, // jumps towards us
            )
            // SwapEffect(
            //   activeDotColor: Colors.deepPurple,
            //   dotColor: Colors.deepPurple.shade100,
            //   dotHeight: 30,
            //   dotWidth: 30,
            //   spacing: 16,
            // ),
            // ExpandingDotsEffect(
            //   activeDotColor: Colors.deepPurple,
            //   dotColor: Colors.deepPurple.shade100,
            //   dotHeight: 30,
            //   dotWidth: 30,
            //   spacing: 16,
            // ),
          )
        ],
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.deepPurple[400],
          ),
        ),
      ),
    );
  }
}