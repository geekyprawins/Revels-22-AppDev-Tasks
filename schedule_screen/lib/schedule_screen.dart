import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    top: 15.0,
                    right: 15.0,
                  ),
                  child: Text(
                    "Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white,
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
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: const Center(
                              child: Text(
                                "Day 1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFF4E5565),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 65,
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 25,
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
                            size: 25,
                          ),
                        ),
                        width: 55,
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
                        intensity: 0.5,
                        depth: 2,
                        color: Color(0xFF21242B),
                        lightSource: LightSource.top,
                      ),
                      child: AppBar(
                        backgroundColor:
                            const Color(0xFF1B1D23).withOpacity(0.8),
                        elevation: 0,
                        bottom: const TabBar(
                          isScrollable: true,
                          indicator: BoxDecoration(
                            color: Color(0xFF16B694),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          tabs: [
                            Tab(
                              text: "10",
                              icon: Text(
                                "S",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              // icon: ,
                            ),
                            Tab(
                              text: "11",
                              icon: Text(
                                "M",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              text: "12",
                              icon: Text(
                                "T",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              text: "13",
                              icon: Text(
                                "W",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              text: "14",
                              icon: Text(
                                "T",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              text: "15",
                              icon: Text(
                                "F",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              text: "16",
                              icon: Text(
                                "S",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
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
