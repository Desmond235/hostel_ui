import 'package:flutter/material.dart';
import 'package:hostel_ui/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          bodySmall: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 15
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 18
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Mainscreen()
    );
  }
}

