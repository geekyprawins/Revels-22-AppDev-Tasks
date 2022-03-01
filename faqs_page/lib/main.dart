import 'package:faqs_page/scroll.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:faqs_page/neumorphism_card.dart';
import 'package:faqs_page/constants.dart';

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//       scrollBehavior: ConstantScrollBehavior(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF21242B),
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               backgroundColor: Color(0xFF21242B),
//               expandedHeight: 250,
//               pinned: true,
//               stretch: true,
//               // title: Text("FAQs"),
//               flexibleSpace: FlexibleSpaceBar(
//                 background: DecoratedBox(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.center,
//                       colors: <Color>[
//                         Colors.lightBlue.withOpacity(0.6),
//                         Colors.transparent,
//                       ],
//                     ),
//                   ),
//                   child: Image.asset(
//                     'assets/revels_nobg.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // title: Text("FAQs"),
//               ),
//               // title: Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: Center(
//               //     child: Text('FAQs'),
//               //   ),
//               // ),
//             ),
//             // SliverFillRemaining(
//             //   fillOverscroll: true,
//             //   child: ListView.builder(
//             //     itemBuilder: (context, index) {
//             //       return Padding(
//             //         padding: const EdgeInsets.all(15.0),
//             //         child: FlipCard(
//             //           speed: 800,
//             //           direction: FlipDirection.VERTICAL,
//             //           front: NeumorphismCard(
//             //             text: Constants.quesAnd.keys.elementAt(index),
//             //           ),
//             //           back: NeumorphismCard(
//             //             text: Constants.quesAnd.values.elementAt(index),
//             //           ),
//             //         ),
//             //       );
//             //     },
//             //     itemCount: Constants.quesAnd.length,
//             //   ),
//             // ),
//             SliverFixedExtentList(
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: FlipCard(
//                       speed: 800,
//                       direction: FlipDirection.VERTICAL,
//                       front: NeumorphismCard(
//                         text: Constants.quesAnd.keys.elementAt(index),
//                         height: 100,
//                       ),
//                       back: NeumorphismCard(
//                         text: Constants.quesAnd.values.elementAt(index),
//                         height: 100,
//                       ),
//                     ),
//                   );
//                 },
//                 childCount: Constants.quesAnd.length,
//               ),
//               itemExtent: 150,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Version 2
import 'dart:ffi';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: Text('FAQ'),
              backgroundColor: Constants.bgColor,
              expandedHeight: 200,
              pinned: true,
              stretch: true,

              // onStretchTrigger: () async => print('stretched'),

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
                    fit: BoxFit.contain,
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
            SliverFillRemaining(
              hasScrollBody: true,
              child: ListView.builder(
                itemCount: Constants.quesAnd.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      color: Constants.bgColor,
                      lightSource: LightSource.topLeft,
                      intensity: 1,
                      depth: 4,
                      shadowDarkColor: Constants.shadesBgColor[0],
                      shadowLightColor: Constants.tintsBgColor[0],
                    ),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.purple[200],
                      textColor: Colors.purple[200],
                      title: Text(
                        Constants.quesAnd.keys.elementAt(index),
                      ),
                      children: [
                        Neumorphic(
                          style: NeumorphicStyle(
                            depth: -5,
                            intensity: 0.5,
                            color: Constants.bgColor,
                            shadowDarkColor: Constants.shadesBgColor[2],
                            shadowLightColor: Constants.tintsBgColor[0],
                            shadowLightColorEmboss: Constants.shadesBgColor[1],
                            shadowDarkColorEmboss: Constants.shadesBgColor[3],
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 15.0,
                            ),
                            title: Text(
                              Constants.quesAnd.values.toList()[index],
                            ),
                          ),
                        ),
                      ],
                      backgroundColor: Constants.bgColor,
                      controlAffinity: ListTileControlAffinity.trailing,
                      // trailing: NeumorphismCard(
                      //   child: Container(),
                      //   showButton: true,
                      // ),
                    ),
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
