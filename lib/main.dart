import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/reveal_tile.dart';

import 'constants.dart';
import 'custom_expansion_tile.dart';

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
        systemNavigationBarColor: Constants.bgColor,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        title: Text(
          'FAQs',
          style: GoogleFonts.cabin(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: BackButton(),
        centerTitle: true,
        backgroundColor: Constants.bgColor,
        // elevation: 3,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              Constants.quesAnd.length,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: RevealTile(index: i),
              ),
              // child: RevealTile(index: index),),),  Padding(
              // padding: const EdgeInsets.symmetric(
              //     horizontal: 20.0, vertical: 15.0),
              // child: RevealTile(index: index),
              // ExpansionTile(
              //   backgroundColor: Constants.tileBgColor,
              //   title: Container(
              //     // color: Constants.tileBgColor,
              //     padding: const EdgeInsets.all(10.0),

              //     child: Text(
              //       Constants.quesAnd.keys.elementAt(index),
              //       style: GoogleFonts.cabin(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20,
              //       ),
              //     ),
              //   ),
              //   children: [
              //     ListTile(
              //       tileColor: Constants.expandedTileColor,
              //       contentPadding: const EdgeInsets.only(
              //           bottom: 20.0, left: 15.0, right: 15.0),
              //       title: Text(
              //         Constants.quesAnd.values.toList()[index],
              //         style: GoogleFonts.cabin(fontSize: 18),
              //       ),
              //     ),
              //     // ),
              //   ],
              //   // trailing: const Icon(Icons.arrow_forward_ios_sharp),
              //   controlAffinity: ListTileControlAffinity.trailing,
              //   // collapsedBackgroundColor:
              //   //     Color.fromARGB(255, 55, 60, 72),
              //   collapsedIconColor: Colors.white,
              //   // backgroundColor: Color.fromARGB(255, 88, 96, 112),
              //   iconColor: Colors.white,
              //   textColor: Colors.white,
              //   tilePadding: const EdgeInsets.all(7.0),
              // ),
            ),
          ),
        ),
        // CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       title: Text(
        //         'FAQs',
        //         style: GoogleFonts.cabin(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 30,
        //         ),
        //       ),
        //       leading: BackButton(),
        //       centerTitle: true,
        //       backgroundColor: Constants.bgColor,
        //       elevation: 3,
        //     ),
        //     SliverFillRemaining(
        //       hasScrollBody: true,
        //       child: SingleChildScrollView(
        //         child: Column(
        //           children: List.generate(
        //             Constants.quesAnd.length,
        //             (i) => Padding(
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 20.0, vertical: 15.0),
        //               child: RevealTile(index: i),
        //             ),
        //             // child: RevealTile(index: index),),),  Padding(
        //             // padding: const EdgeInsets.symmetric(
        //             //     horizontal: 20.0, vertical: 15.0),
        //             // child: RevealTile(index: index),
        //             // ExpansionTile(
        //             //   backgroundColor: Constants.tileBgColor,
        //             //   title: Container(
        //             //     // color: Constants.tileBgColor,
        //             //     padding: const EdgeInsets.all(10.0),

        //             //     child: Text(
        //             //       Constants.quesAnd.keys.elementAt(index),
        //             //       style: GoogleFonts.cabin(
        //             //         fontWeight: FontWeight.bold,
        //             //         fontSize: 20,
        //             //       ),
        //             //     ),
        //             //   ),
        //             //   children: [
        //             //     ListTile(
        //             //       tileColor: Constants.expandedTileColor,
        //             //       contentPadding: const EdgeInsets.only(
        //             //           bottom: 20.0, left: 15.0, right: 15.0),
        //             //       title: Text(
        //             //         Constants.quesAnd.values.toList()[index],
        //             //         style: GoogleFonts.cabin(fontSize: 18),
        //             //       ),
        //             //     ),
        //             //     // ),
        //             //   ],
        //             //   // trailing: const Icon(Icons.arrow_forward_ios_sharp),
        //             //   controlAffinity: ListTileControlAffinity.trailing,
        //             //   // collapsedBackgroundColor:
        //             //   //     Color.fromARGB(255, 55, 60, 72),
        //             //   collapsedIconColor: Colors.white,
        //             //   // backgroundColor: Color.fromARGB(255, 88, 96, 112),
        //             //   iconColor: Colors.white,
        //             //   textColor: Colors.white,
        //             //   tilePadding: const EdgeInsets.all(7.0),
        //             // ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

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
