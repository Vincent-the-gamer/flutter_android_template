import 'package:flutter/material.dart';
import 'package:flutter_android_template/tools/text_button_bg.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(child: Text("Click to add:", style: TextStyle(fontSize: 20))),
        Center(child: Text("${count}", style: TextStyle(fontSize: 28),)),
        TextButton(
          style: ButtonStyle(backgroundColor: createTextBtnBgColor()),
          child: Text("+1", style: TextStyle(color: Colors.white)),
          onPressed: () {
            add();
          },
        ),
      ],
    );
  }

  add() {
    setState(() {
      count++;
    });
  }
}
