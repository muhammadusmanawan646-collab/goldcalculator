import 'package:flutter/material.dart';
import 'package:goldcalculate/goldcalculator.dart';
// import 'package:goldcalculate/goldcalculate.dart';
import 'package:goldcalculate/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: splashscreen(),
    );
  }
}
