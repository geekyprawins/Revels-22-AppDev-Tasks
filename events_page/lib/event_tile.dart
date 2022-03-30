import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EventTile extends StatelessWidget {
  const EventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 1,
        lightSource: LightSource.bottomRight,
        color: const Color(0xFFFE580C),
        border: const NeumorphicBorder(
          isEnabled: true,
          color: Color(0xFFFE580C),
          width: 1,
        ),
      ),
      child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFE580C),
              Color(0xFFD22CD8),
            ],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: const Color(0xFFFE580C),
          ),
        ),
        child: const EventTileCustom(),
        // ListTile(
        //   minLeadingWidth: 25,
        //   textColor: Colors.white,
        //   iconColor: Colors.white,
        //   contentPadding: const EdgeInsets.symmetric(
        //     vertical: 10,
        //     horizontal: 25,
        //   ),
        //   trailing: const Icon(
        //     Icons.arrow_forward_sharp,
        //     size: 30,
        //   ),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Row(
        //         children: [
        //           Column(
        //             children: const [
        //               Text(
        //                 "13",
        //                 style: TextStyle(
        //                   fontSize: 25,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               Text(
        //                 "April",
        //                 style: TextStyle(
        //                   fontSize: 11,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           const SizedBox(
        //             width: 12,
        //           ),
        //           const SizedBox(
        //               height: 81, child: VerticalDivider(color: Colors.white)),
        //         ],
        //       ),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: const [
        //           Text(
        //             "Solo Dance",
        //             style: TextStyle(
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //           SizedBox(
        //             height: 5,
        //           ),
        //           Text(
        //             "Category Name",
        //             style: TextStyle(fontSize: 13),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        //   onTap: () {
        //     print("Clicked");
        //   },
        // ),
      ),
    );
  }
}

class NeumorphicEventTile extends StatefulWidget {
  const NeumorphicEventTile({Key? key}) : super(key: key);

  @override
  State<NeumorphicEventTile> createState() => _NeumorphicEventTileState();
}

class _NeumorphicEventTileState extends State<NeumorphicEventTile> {
  bool isPressed = false;

  void press() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.circle,
            color: Color(0xFFE9436F),
            size: 12,
          ),
          // const SizedBox(
          //   width: 18,
          // ),
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.75,
          //   height: 75,
          //   decoration: BoxDecoration(
          //     gradient: const LinearGradient(
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //       colors: [
          //         Color(0xFFFE580C),
          //         Color(0xFFD22CD8),
          //       ],
          //     ),
          //     borderRadius: const BorderRadius.all(
          //       Radius.circular(15),
          //     ),
          //     border: Border.all(
          //       color: const Color(0xFFFE580C),
          //     ),
          //   ),
          //   child: const Padding(
          //     padding: EdgeInsets.all(10.0),
          //     child: EventTileCustom(),
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 75,
            decoration: const BoxDecoration(
              // gradient: const LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Color(0xFFFE580C),
              //     Color(0xFFD22CD8),
              //   ],
              // ),
              // color: Color(0xFF21242B),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              // border: Border.all(
              //   color: const Color(0xFFFE580C),
              // ),
            ),
            child: NeumorphicButton(
              pressed: isPressed,
              onPressed: press,
              child: const EventTileCustom(),
              style: const NeumorphicStyle(
                intensity: 0.5,
                depth: 4,
                color: Color(0xFF21242B),
                // border: NeumorphicBorder(
                //   isEnabled: true,
                //   width: 2,
                //   color: Color(0xFFFE580C),
                // ),
                lightSource: LightSource.topLeft,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EventTileCustom extends StatelessWidget {
  const EventTileCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Text(
              "13",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "April",
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 75,
          child: VerticalDivider(color: Colors.white),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Solo Dance",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Category Name",
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ],
        ),
        // const Icon(
        //   Icons.arrow_forward_sharp,
        //   size: 30,
        //   color: Color(0xFFE9436F),
        // ),
        NeumorphicIcon(
          Icons.arrow_forward_sharp,
          size: 30,
          style: const NeumorphicStyle(
            intensity: 0.5,
            depth: 1,
            lightSource: LightSource.topLeft,
            color: Color(0xFFE9436F),
          ),
        ),
      ],
    );
  }
}
