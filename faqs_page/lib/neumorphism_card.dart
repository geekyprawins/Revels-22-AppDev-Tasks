// import 'package:flutter/material.dart';
//
// class NeumorphismCard extends StatelessWidget {
//   final String text;
//   final double height;
//   const NeumorphismCard({Key? key, required this.text, required this.height})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.85,
//       height: height,
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade900,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(20),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade700,
//             offset: const Offset(4.0, 4.0),
//             blurRadius: 5.0,
//             spreadRadius: 0.0,
//           ),
//           const BoxShadow(
//             color: Colors.blueGrey,
//             offset: Offset(-4.0, -4.0),
//             blurRadius: 5.0,
//             spreadRadius: 0.0,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:faqs_page/constants.dart';

class NeumorphismCard extends StatelessWidget {
  final Widget child;
  final bool showButton;
  const NeumorphismCard(
      {Key? key, required this.child, this.showButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: showButton ? 30 : MediaQuery.of(context).size.width / 1.7,
      height: showButton ? 30 : 100,
      child: Padding(
          padding:
              showButton ? const EdgeInsets.all(0) : const EdgeInsets.all(8.0),
          child: showButton
              ? const Center(
                  child: Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.white,
                  ),
                )
              : child),
      decoration: BoxDecoration(
        color: Constants.bgColor,
        shape: showButton ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: showButton
            ? null
            : const BorderRadius.all(
                Radius.circular(20),
              ),
        boxShadow: [
          BoxShadow(
            color: Constants.shadesBgColor[2],
            offset: const Offset(4.0, 4.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
          BoxShadow(
            color: Constants.shadesBgColor[0],
            offset: const Offset(-4.0, -4.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
    );
  }
}
