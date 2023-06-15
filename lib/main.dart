import 'package:flutter/material.dart';
import 'package:widgets_yt/calls_and_messages.dart';
import 'package:widgets_yt/custom_icons.dart';
import 'package:widgets_yt/dot_indicator.dart';
import 'package:widgets_yt/fancy_refresh.dart';
import 'package:widgets_yt/get_input_from_keyboard.dart';
import 'package:widgets_yt/neumorphism_button.dart';
import 'package:widgets_yt/on_boarding_screen.dart';
import 'package:widgets_yt/percent_indicator.dart';
import 'package:widgets_yt/slide_to.dart';
import 'package:widgets_yt/smooth_button_press.dart';
import 'package:widgets_yt/tiktok_style_swipe.dart';
import 'package:widgets_yt/time_picker.dart';
import 'package:widgets_yt/tinder_style_card_swipe.dart';
import 'package:widgets_yt/toast.dart';
import 'package:widgets_yt/wheel_scroll.dart';
import 'package:widgets_yt/slidable.dart';
import 'package:widgets_yt/condition_toggle.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: NeumorphismButton(),
        // Column(
        //   children: [
        //     buttonStack(title: "Pizza"),
        //     buttonStack(title: "Burger"),
        //     buttonStack(title: "Fries"),
        //   ],
        // ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}