import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:neurmorphism_faq/neumorphism_card.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.grey[850],
          expandedHeight: 150,
          flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/revels_nobg.png'))),
          // title: Text('FAQ Page'),
        ),
        SliverFillRemaining(
          child: SingleChildScrollView(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(35.0),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                Constants.quesAnd.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlipCard(
                    front: NeumorphismCard(
                        text: Constants.quesAnd.keys.elementAt(index)),
                    back: NeumorphismCard(
                      text: Constants.quesAnd.values.elementAt(index),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
