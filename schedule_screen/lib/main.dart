import 'package:flutter/material.dart';
import 'package:schedule_screen/schedule_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Schedule',
      home: const ScheduleScreen(),
      theme: ThemeData(
        fontFamily: "Cabin",
        splashColor: const Color(0xFF576075),
      ),
    );
  }
}
