// import 'package:flip_card/flip_card.dart';
// import 'package:flutter/material.dart';
// import 'package:neurmorphism_faq/neumorphism_card.dart';

// import 'constants.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool darkMode = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[850],
//       body: CustomScrollView(slivers: [
//         SliverAppBar(
//           backgroundColor: Colors.grey[850],
//           expandedHeight: 150,
//           flexibleSpace: const FlexibleSpaceBar(
//               background: Image(image: AssetImage('assets/revels_nobg.png'))),
//           // title: Text('FAQ Page'),
//         ),
//         SliverFillRemaining(
//           child: SingleChildScrollView(
//             // decoration: BoxDecoration(
//             //   borderRadius: BorderRadius.circular(35.0),
//             // ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 Constants.quesAnd.length,
//                 (index) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: FlipCard(
//                     front: NeumorphismCard(
//                         text: Constants.quesAnd.keys.elementAt(index)),
//                     back: NeumorphismCard(
//                       text: Constants.quesAnd.values.elementAt(index),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
import 'dart:ffi';

import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:neurmorphism_faq/glass.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        primaryColor: Constants.bgColor,
        scaffoldBackgroundColor: Constants.bgColor,
        textTheme: Typography.whiteMountainView,
      ),
      scrollBehavior: const ConstantScrollBehavior(),
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
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Constants.shadesBgColor[1],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.shadesBgColor[0],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('FAQ'),
              centerTitle: true,
              backgroundColor: Constants.shadesBgColor[0],
              elevation: 3,
              // expandedHeight: 200,

              // stretch: true,

              // onStretchTrigger: () async => print('stretched'),

              // title: Text("FAQs"),
              // flexibleSpace: FlexibleSpaceBar(
              //   background: DecoratedBox(
              //     decoration: BoxDecoration(
              //       // gradient: LinearGradient(
              //       //   begin: Alignment.topCenter,
              //       //   end: Alignment.center,
              //       //   colors: <Color>[
              //       //     Colors.lightBlue.withOpacity(0.6),
              //       //     Colors.transparent,
              //       //   ],
              //       // ),
              //     ),
              //     child: Image.asset(
              //       'assets/faq_2.png',
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              //   // title: Text("FAQs"),
              // ),
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
            SliverFillRemaining(
              hasScrollBody: true,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/revels_nobg.png'),
                  ),
                ),
                child: ListView.builder(
                  itemCount: Constants.quesAnd.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: GlassMorphism(
                        child: ExpansionTile(
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.red,
                          textColor: Colors.white,
                          tilePadding: const EdgeInsets.all(7.0),
                          title: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              Constants.quesAnd.keys.elementAt(index),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          children: [
                            // Neumorphic(
                            //   style: Constants.depressedNeumorphicEffect,
                            //   child:
                            ListTile(
                              title: Text(
                                Constants.quesAnd.values.toList()[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                            // ),
                          ],
                          // backgroundColor: Constants.shadesBgColor[1],
                          // collapsedBackgroundColor: Constants.shadesBgColor[1],
                          controlAffinity: ListTileControlAffinity.trailing,
                          // trailing: NeumorphismCard(
                          //   child: Container(),
                          //   showButton: true,
                          // ),
                        ),
                        start: 0.6,
                        end: 0.3),
                    // child: Neumorphic(
                    //   style: Constants.depressedNeumorphicEffect,
                    // child: ExpansionTile(
                    //   collapsedIconColor: Colors.white,
                    //   iconColor: Colors.red,
                    //   textColor: Colors.white,
                    //   tilePadding: const EdgeInsets.all(7.0),
                    //   title: Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Text(
                    //       Constants.quesAnd.keys.elementAt(index),
                    //     ),
                    //   ),
                    //   children: [
                    //     Neumorphic(
                    //       style: Constants.depressedNeumorphicEffect,
                    //       child: ListTile(
                    //         title: Text(
                    //           Constants.quesAnd.values.toList()[index],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    //   backgroundColor: Constants.shadesBgColor[1],
                    //   collapsedBackgroundColor: Constants.shadesBgColor[1],
                    //   controlAffinity: ListTileControlAffinity.trailing,
                    //   // trailing: NeumorphismCard(
                    //   //   child: Container(),
                    //   //   showButton: true,
                    //   // ),
                    // ),
                    // ),
                  ),
                ),
              ),
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
