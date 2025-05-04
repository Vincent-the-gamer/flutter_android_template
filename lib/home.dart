import 'package:flutter/material.dart';
import 'package:flutter_android_template/counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple[200],
          title: const Text("Flutter Template"),
          centerTitle: true
      ),
      body: Counter(),
    );
  }
}
