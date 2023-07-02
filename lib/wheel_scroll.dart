import 'package:flutter/material.dart';

class WheelScroll extends StatefulWidget {
  const WheelScroll({Key? key}) : super(key: key);

  @override
  State<WheelScroll> createState() => _WheelScrollState();
}

class _WheelScrollState extends State<WheelScroll> {
  List<String> am_pm = ["AM", "PM"];
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
                controller: _controller,
                diameterRatio: 1.3,
                perspective: 0.005,
                itemExtent: 50,
                physics:
                    const ScrollPhysics(), // always land on the number rather than sliding away
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 13,
                  builder: (context, index) {
                    return Hours(
                      hour: index,
                    );
                  },
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
                controller: _controller,
                diameterRatio: 1.3,
                perspective: 0.005,
                itemExtent: 50,
                physics:
                    const ScrollPhysics(), // always land on the number rather than sliding away
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    return Minutes(
                      minute: index,
                    );
                  },
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
                controller: _controller,
                diameterRatio: 1.3,
                perspective: 0.005,
                itemExtent: 50,
                physics:
                    const ScrollPhysics(), // always land on the number rather than sliding away
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index) {
                    return AMPM(
                      am_pm: am_pm[index],
                    );
                  },
                )),
          ),
        ],
      ),
      /*
      ListWheelScrollView(
        itemExtent: 50,
        
        // The cylindrical rotation of the scroll
        perspective: 0.005, // 0 <= value <= 0.01

        // Gap between the items.
        diameterRatio: 1.2,
      ),
      */
    );
  }
}

class Minutes extends StatelessWidget {
  final int minute;

  const Minutes({Key? key, required this.minute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            minute > 9 ? minute.toString() : "0" + minute.toString(),
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Hours extends StatelessWidget {
  final int hour;

  const Hours({Key? key, required this.hour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            hour > 9 ? hour.toString() : "0" + hour.toString(),
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class AMPM extends StatelessWidget {
  final String am_pm;

  const AMPM({Key? key, required this.am_pm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            am_pm,
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
