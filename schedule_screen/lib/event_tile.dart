import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventTile extends StatefulWidget {
  const EventTile({Key? key, required this.colorIndex}) : super(key: key);
  final int colorIndex;
  @override
  _EventTileState createState() => _EventTileState();
}

class _EventTileState extends State<EventTile> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  List<Color> lineColors = const [
    Color(0xFF16B694),
    Color(0xFFFADC50),
    Color(0xFFE9436F),
    Color(0xFF4382BB),
  ];

  bool isPressed = false;

  void press() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 110,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: Color(0xFF21242B),
      ),
      child: NeumorphicButton(
        pressed: isPressed,
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                    child: VerticalDivider(
                      color: lineColors[widget.colorIndex],
                      thickness: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Event",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.clock,
                            color: Color(0xFFE9E9E9),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4:00 - 5:00 PM",
                            style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.locationPinLock,
                            color: Color(0xFFE9E9E9),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Academic Block 3",
                            style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: toggleLike,
                icon: isLiked
                    ? const FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.pink,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ),
              ),
            ],
          ),
        ),
        style: const NeumorphicStyle(
          intensity: 0.5,
          depth: 3,
          color: Color(0xFF21242B),
          lightSource: LightSource.topLeft,
        ),
      ),
    );
  }
}
