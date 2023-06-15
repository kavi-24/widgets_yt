import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// Required percent_indicator package
class PercentIndicator extends StatelessWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                animation: true,
                animationDuration: 1000,
                radius: 200,
                lineWidth: 20,
                percent: 0.4,
                progressColor: Colors.deepPurple,
                backgroundColor: Colors.purple.shade100,
                circularStrokeCap: CircularStrokeCap.round, // modfy end points
                center: Text(
                  "40%",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 40,
                percent: 0.5,
                progressColor: Colors.green,
                backgroundColor: Colors.green[200],
              )
            ],
          ),
        ),
      ),
    );
  }
}
