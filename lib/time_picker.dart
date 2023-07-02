import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_timeOfDay.format(context).toString(),
          style: const TextStyle(
            fontSize: 50
          ),),
          MaterialButton(
            onPressed: _showTimePicker,
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "PICK TIME",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
