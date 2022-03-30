import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProShowScreen extends StatefulWidget {
  @override
  _ProShowScreenState createState() => _ProShowScreenState();
}

class _ProShowScreenState extends State<ProShowScreen>
    with SingleTickerProviderStateMixin{
  late TabController? _controller;
  @override
  void initState(){
    super.initState();
    _controller=TabController(length: 4, vsync: this);
    _controller?.addListener(() {
      setState(() {});
    });
  }
  @override
  void dispose(){
    super.dispose();
    _controller?.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121416),

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(
          Icons.arrow_back,
        ),
        toolbarHeight: 100,
        title:
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,8),
                child: Text(
                  "Proshow",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
              decoration: BoxDecoration(
              border: Border(
    bottom: BorderSide(width: 1.0, color: Color.fromRGBO(255, 255, 255, 0.2)),
    ),
            ),
            ),
        backgroundColor: Color(0xFF121416),
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          indicatorWeight: 0.5,
          controller: _controller,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: const BoxDecoration(
            color: Color(0xFF394046),
            borderRadius: BorderRadius.all(
                Radius.circular(3),
            ),
          ),
          tabs: [
            new Container(
              width: 67,
              height: 34,
              child: Tab(
                child: Text("Day 1",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
                ),
              ),
            ),
            Container(
              width: 67,
              height: 34,
              child: Tab(
                  child: Text("Day 2",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  )
              ),
            ),
            Container(
              width: 67,
              height: 34,
              child: Tab(
                  child: Text("Day 3",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  )
              ),
            ),
            Container(
              width: 67,
              height: 34,
              child: Tab(
                  child: Text("Day 4",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white

                    ),
                  )
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [

          ListView(
            children: [
              Divider(
                height:15,
                thickness: 1,
                indent:20,
                endIndent: 20,
                color: Color.fromRGBO(255, 255, 255, 0.2)
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(21, 8, 28, 19),

                child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2,18,2,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('13 April',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Thursday',style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            )),
                          ],
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        SizedBox(
                          height: 32,
                          width: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // background (button) color
                              onPrimary: Colors.white, // foreground (text) color
                            ),
                            onPressed: () => null,
                            child: const Text('Buy', style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w900
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/image 7.png'),
                        fit: BoxFit.fill
                      ),)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/image 7.png'),
                            fit: BoxFit.fill

                        ),)
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text("MIT Football Ground", style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 23,
                        fontWeight: FontWeight.w900
                    ),),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text("7:30 PM", style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 23,
                        fontWeight: FontWeight.w900
                    ),),
                  )
                ],
            ),
              ),]
          ),
          const Center(
            child: Text("Day 2",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              color: Color(0xFFFFFF),
            ),),

          ), const Center(
            child: Text("Day 3",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                color: Color(0xFFFFFF),
              ),),

          ), const Center(
            child: Text("Day 4",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: Color(0xFFFFFF),
              ),),

          ),
        ],
      ),
    );
  }
}
