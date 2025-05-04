import 'package:flutter/material.dart';
import 'package:flutter_android_template/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Android Template',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.purple[100],
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
        ),
      ),
      home: const Home(),
    );
  }
}
