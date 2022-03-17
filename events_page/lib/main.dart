import 'package:flutter/material.dart';

import 'events_screen.dart';

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
      title: 'Events',
      home: const EventsScreen(),
      theme: ThemeData(
        fontFamily: "Cabin",
        splashColor: const Color(0xFF576075),
      ),
    );
  }
}
