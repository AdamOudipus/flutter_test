import 'package:flutter/material.dart';
import 'package:test_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
