import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:faqs_page/neumorphism_card.dart';
import 'package:faqs_page/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      scrollBehavior: ConstantScrollBehavior(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF21242B),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xFF21242B),
              expandedHeight: 250,
              pinned: true,
              stretch: true,
              // title: Text("FAQs"),
              flexibleSpace: FlexibleSpaceBar(
                background: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.lightBlue.withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Image.asset(
                    'assets/revels_nobg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // title: Text("FAQs"),
              ),
              // title: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Center(
              //     child: Text('FAQs'),
              //   ),
              // ),
            ),
            // SliverFillRemaining(
            //   fillOverscroll: true,
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: FlipCard(
            //           speed: 800,
            //           direction: FlipDirection.VERTICAL,
            //           front: NeumorphismCard(
            //             text: Constants.quesAnd.keys.elementAt(index),
            //           ),
            //           back: NeumorphismCard(
            //             text: Constants.quesAnd.values.elementAt(index),
            //           ),
            //         ),
            //       );
            //     },
            //     itemCount: Constants.quesAnd.length,
            //   ),
            // ),
            SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlipCard(
                      speed: 800,
                      direction: FlipDirection.VERTICAL,
                      front: NeumorphismCard(
                        text: Constants.quesAnd.keys.elementAt(index),
                        height: 100,
                      ),
                      back: NeumorphismCard(
                        text: Constants.quesAnd.values.elementAt(index),
                        height: 100,
                      ),
                    ),
                  );
                },
                childCount: Constants.quesAnd.length,
              ),
              itemExtent: 150,
            ),
          ],
        ),
      ),
    );
  }
}

/*
 Padding( padding: const EdgeInsets.all(15.0),
                  child: FlipCard(
                    speed: 800,
                    direction: FlipDirection.VERTICAL,
                    front: NeumorphismCard(
                      text: Constants.quesAnd.keys.elementAt(index),
                    ),
                    back: NeumorphismCard(
                      text: Constants.quesAnd.values.elementAt(index),
                    ),
                  ),
)
*/
class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();

  @override
  Widget buildScrollbar(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  Widget buildOverscrollIndicator(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  TargetPlatform getPlatform(BuildContext context) => TargetPlatform.macOS;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
}
