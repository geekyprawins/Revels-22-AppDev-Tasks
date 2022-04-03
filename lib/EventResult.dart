import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
class EventsResult extends StatefulWidget {
  @override
  _EventsResultState createState() => _EventsResultState();
}

class _EventsResultState extends State<EventsResult> with SingleTickerProviderStateMixin
{late TabController? _controller;

@override
void initState() {
  // TODO: implement initState
  super.initState();
  _controller = TabController(length: 1, vsync: this);
  _controller?.addListener(() {
    setState(() {});
  });
}

@override
void dispose() {
  // TODO: implement dispose
  super.dispose();
  _controller?.dispose();
}

@override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF21242B),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          toolbarHeight: 100,
        title: const Text(
          "Event",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Cabin',
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0xFF21242B),
        centerTitle: true,
  bottom: TabBar(
  isScrollable: true,
  indicatorColor: const Color.fromRGBO(255, 255, 255, 0.9),
  indicatorWeight: 4,
  controller: _controller,
  // isScrollable: true,
  // overlayColor: MaterialStateProperty.all(Colors.amberAccent),

    tabs: [
      Container(
        width: 175,
        height: 34,
        child: Tab(
          child: Text("Round 1",
            style: GoogleFonts.cabin(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
          ),
        ),
      ),




    ]
  ,

  )
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30,45,30,79),
            child: ListView(
              children: [
                Container(
                  height: 95,
                  width: 354,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,


                    children: [
                      Text("1",style: GoogleFonts.montserrat(fontSize: 90,color: const Color.fromRGBO(255, 255,255,1).withOpacity(0.1),fontWeight: FontWeight.w800),),
                      SizedBox(
                        width:43 ,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                           Text("TEAM ID",style: GoogleFonts.montserrat(fontSize: 15,color: Color.fromRGBO(255,255,255,0.4),fontWeight: FontWeight.w400
                          ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text("1234",style: GoogleFonts.montserrat(fontSize: 25,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.w700),)
                        ],
                      ),
                      const SizedBox(
                        width:91
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                          image: AssetImage('assets/medal (3) 1.png'),
                            fit: BoxFit.fill
                        ),)
                      )
                    ],
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 95,
                    width: 354,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [
                        Text("2",style: GoogleFonts.montserrat(fontSize: 90,color: const Color.fromRGBO(255, 255,255,1).withOpacity(0.1),fontWeight: FontWeight.w800),),
                        const SizedBox(
                          width:29 ,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                             Text("TEAM ID",style: GoogleFonts.montserrat(fontSize: 15,color: Color.fromRGBO(255,255,255,0.4),fontWeight: FontWeight.w400
                            )
                            ),SizedBox(
                              height: 2,
                            ),
                            Text("1234",style: GoogleFonts.montserrat(fontSize: 25,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.w700),)
                          ],
                        ),
                        const SizedBox(
                            width:85
                        ),
                        Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/silver-medal 1.png'),
                                  fit: BoxFit.fill
                              ),)
                        )
                      ],
                    )
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 95,
                    width: 354,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("3",style: GoogleFonts.montserrat(fontSize: 90,color: const Color.fromRGBO(255, 255,255,1).withOpacity(0.1),fontWeight: FontWeight.w800),),
                         SizedBox(
                          width:30 ,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Text("TEAM ID",style: GoogleFonts.montserrat(fontSize: 15,color: Color.fromRGBO(255,255,255,0.4),fontWeight: FontWeight.w400
                            )
                            ),
                            SizedBox(
                              height: 2,
                            ),
                           Text("1234",style: GoogleFonts.montserrat(fontSize: 25,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.w700),)
                          ],
                        ),const SizedBox(
                            width:90
                        ),
                        Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/bronze-medal 1.png'),
                                  fit: BoxFit.fill
                              ),)
                        )

                      ],
                    )
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 94,
                    width: 354,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("4",style: GoogleFonts.montserrat(fontSize: 90,color: const Color.fromRGBO(255, 255,255,1).withOpacity(0.1),fontWeight: FontWeight.w800),),
                        SizedBox(
                          width:34 ,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("TEAM ID",style: GoogleFonts.montserrat(fontSize: 15,color: Color.fromRGBO(255,255,255,0.4),fontWeight: FontWeight.w400
                            )
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text("1234",style: GoogleFonts.montserrat(fontSize: 25,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.w700),)
                          ],
                        ),

                      ],
                    )
                ),
                Center(
                  child: Text(
                    "Round 1",
                  ),
                ),
                const Center(
                  child: Text(
                    "Round 1",
                  ),
                ),
              ],

            ),
          )
        ],

      ),

    );
  }
}
