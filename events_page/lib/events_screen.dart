import 'package:flutter/material.dart';
import 'package:events_page/event_tile.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>
    with SingleTickerProviderStateMixin {
  late TabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 5, vsync: this);
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
      backgroundColor: const Color(0xFF1B1D23).withOpacity(0.8),
      appBar: AppBar(
        title: const Text(
          "Events",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xFF1B1D23),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: const Color(0xFFD22CD8),
          controller: _controller,
          // isScrollable: true,
          // overlayColor: MaterialStateProperty.all(Colors.amberAccent),
          indicator: const BoxDecoration(
            color: Color(0xFF576075),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
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
      body: TabBarView(
        controller: _controller,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 12,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    EventTile(),
                  ],
                );
              },
              itemCount: 15,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 45,
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
