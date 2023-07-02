import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConditionSwitchNotifier extends ChangeNotifier {
  String? currentValue;

  setCurrentValue({required String kValue}) {
    currentValue = kValue;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    String kValue = conditionSwitchNotifier(context: context, renderUI: true).currentValue ?? "";
    return buttonStack(context: context, title: "title", kValue: kValue);
  }
}

Widget buttonStack({required BuildContext context, required String title, required String kValue}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 20,),
        Switch(
          value: kValue == title ? true : false,
          onChanged: (val) {
            conditionSwitchNotifier(context: context, renderUI: false).setCurrentValue(kValue: title);
          }
        )
      ],
    )
  );
}

ConditionSwitchNotifier conditionSwitchNotifier({required BuildContext context, required bool renderUI}) =>
  Provider.of<ConditionSwitchNotifier>(context, listen: renderUI);