import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'events_list.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: const Color(0xFF1B1D23).withOpacity(
          0.8,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 15.0,
                    right: 15.0,
                  ),
                  child: Text(
                    "Schedule",
                    style: GoogleFonts.cabin(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  indent: 120,
                  endIndent: 120,
                  color: Colors.white,
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                "Day 1",
                                style: GoogleFonts.cabin(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFF4E5565),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 75,
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF4E5565),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 80,
                    child: Neumorphic(
                      style: const NeumorphicStyle(
                        intensity: 0,
                        depth: 1,
                        color: Color(0xFF21242B),
                        lightSource: LightSource.top,
                      ),
                      child: AppBar(
                        backgroundColor:
                            const Color(0xFF1B1D23).withOpacity(0.8),
                        elevation: 0,
                        bottom: TabBar(
                          isScrollable: true,
                          indicator: BoxDecoration(
                            color: const Color(0xFF16B694).withOpacity(0.6),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          tabs: List<Tab>.generate(7, (index) {
                            final Map<int, String> days = {
                              10: "S",
                              11: "M",
                              12: "T",
                              13: "W",
                              14: "T",
                              15: "F",
                              16: "S",
                            };
                            return Tab(
                              text: (index + 10).toString(),
                              icon: Text(
                                days[index + 10].toString(),
                                style: GoogleFonts.cabin(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // icon: ,
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.95,
                  child: const TabBarView(
                    children: [
                      EventsList(),
                      EventsList(),
                      EventsList(),
                      EventsList(),
                      EventsList(),
                      EventsList(),
                      EventsList(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
