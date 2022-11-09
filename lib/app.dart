import 'package:assessment/screens/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: Center(
        child: CircularProgressIndicator(color: Color(0xff6C63FF)),
      ),
      overlayColor: Colors.black,
      overlayOpacity: 0.8,
      child: MaterialApp(
        // showPerformanceOverlay: true,
        debugShowCheckedModeBanner: false,
        home: LogInScreen(),
      ),
    );
  }
}
