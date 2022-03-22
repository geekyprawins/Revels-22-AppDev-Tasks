import 'package:flutter/material.dart';
import 'package:revels/event.dart';
import 'package:revels/eventCalendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Event(),
      theme: ThemeData(
        fontFamily: "Cabin",
        splashColor: const Color(0xFF576075)
      )
    );
  }
}
