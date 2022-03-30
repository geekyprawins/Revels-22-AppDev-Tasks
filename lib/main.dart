import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:neurmorphism_faq/categories_page.dart';

import 'package:neurmorphism_faq/faq_page.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CategoriesPage(),
      theme: ThemeData(
        primaryColor: Constants.bgColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        scaffoldBackgroundColor: Constants.bgColor,
        textTheme: Typography.whiteMountainView,
      ),
      scrollBehavior: const ConstantScrollBehavior(),
    );
  }
}
