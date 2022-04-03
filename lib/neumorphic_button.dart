import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class NeumorphicButton extends StatelessWidget {
  final Widget title;
  final void Function()? onTap;
  NeumorphicButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final TextStyle buttonText =
      GoogleFonts.cabin(fontSize: 25, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Neumorphic(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 60, maxWidth: 200),
            child: Center(child: title),
          ),
          style: Constants.elevatedNeumorphicStyle,
        ),
      ),
    );
  }
}
