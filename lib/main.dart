import 'package:assessment/screens/log_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
