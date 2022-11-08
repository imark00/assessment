import 'package:assessment/screens/log_in_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
