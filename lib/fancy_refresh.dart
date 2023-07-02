// requires liquid_pull_to_refresh package
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FancyRefresh extends StatelessWidget {
  const FancyRefresh({Key? key}) : super(key: key);

  
  Future<void> _handleRefresh() async {
    // reloading take some time
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.grey,
        height: 200,
        backgroundColor: Colors.grey[200],
        animSpeedFactor: 2, // faster
        // showChildOpacityTransition: false, // shows the child
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}