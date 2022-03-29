import 'package:flutter/material.dart';
import 'package:proshow/proshow.dart';

void main(){
  runApp(MyApp());}
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ProShow',
        home: ProShowScreen(),
        theme: ThemeData(
          fontFamily: "Cabin",
          splashColor: const Color(0xFF576075),
        )
      );
    }
  }
