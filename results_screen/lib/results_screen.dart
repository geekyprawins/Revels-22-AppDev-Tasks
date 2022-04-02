import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen>
    with SingleTickerProviderStateMixin {
  late TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    _controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1D23).withOpacity(
        0.8,
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height * 0.18,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            backgroundColor: const Color(0xFF16181D),
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 5,
                  ),
                  child: Text(
                    "Results",
                    style: GoogleFonts.cabin(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 15.0,
                  ),
                  child: Text(
                    "Check out the results to win prizes",
                    style: GoogleFonts.cabin(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: const Color(0xFFD22CD8),
                  indicatorWeight: 0.5,
                  controller: _controller,
                  indicator: const BoxDecoration(
                    color: Color(0xFF576075),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelStyle: GoogleFonts.cabin(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  tabs: const [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Dance',
                    ),
                    Tab(
                      text: 'Music',
                    ),
                    Tab(
                      text: 'Sport',
                    ),
                    Tab(
                      text: 'Tech',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    title: Text(
                      "Event",
                      style: GoogleFonts.cabin(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Color(0xFF68FDDE),
                      size: 30,
                    ),
                  ),
                );
              },
              itemCount: 15,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.white,
                  // thickness: 1,
                );
              },
            ),
          ),
          const Center(
            child: Text(
              "Dance",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Music",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Sport",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Tech",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
