// flutter_spinkit

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinnerz extends StatelessWidget {
  const Spinnerz({super.key});
  // pubspec.yaml set sdk version >= 2.17.0 in env

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Flutter Spinkit Demo"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: const [
          SpinKitChasingDots(color: Colors.red,),
          SpinKitCircle(color: Colors.red,),
          SpinKitCubeGrid(color: Colors.red,),
          SpinKitDancingSquare(color: Colors.red,),
          SpinKitDoubleBounce(color: Colors.red,),
          SpinKitDualRing(color: Colors.red,),
          SpinKitFadingCircle(color: Colors.red,),
          SpinKitFadingCube(color: Colors.red,),
          SpinKitFadingFour(color: Colors.red,),
          SpinKitFadingGrid(color: Colors.red,),
          SpinKitFoldingCube(color: Colors.red,),
          SpinKitHourGlass(color: Colors.red,),
          SpinKitPianoWave(color: Colors.red,),
          SpinKitPouringHourGlass(color: Colors.red),
          SpinKitPouringHourGlassRefined(color: Colors.red),
          SpinKitPulse(color: Colors.red,),
          SpinKitPulsingGrid(color: Colors.red,),
          SpinKitPumpingHeart(color: Colors.red,),
          SpinKitRing(color: Colors.red,),
          SpinKitRipple(color: Colors.red,),
          SpinKitRotatingCircle(color: Colors.red,),
          SpinKitRotatingPlain(color: Colors.red,),
          SpinKitSpinningCircle(color: Colors.red,),
          SpinKitSpinningLines(color: Colors.red,),
          SpinKitSquareCircle(color: Colors.red,),
          SpinKitThreeBounce(color: Colors.red,),
          SpinKitThreeInOut(color: Colors.red,),
          SpinKitWanderingCubes(color: Colors.red,),
          SpinKitWave(color: Colors.red,),
          SpinKitWaveSpinner(color: Colors.red,),
        ],
      ),
    );
  }
}