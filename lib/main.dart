import 'package:flutter/material.dart';

import 'EventResult.dart';



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
      home: EventsResult(),
      theme: ThemeData(
        fontFamily: "Montserrat",
        splashColor: const Color(0xFF576075),
      ),
    );
  }
}