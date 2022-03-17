import 'dart:ui';
import 'package:flutter/material.dart';

import 'constants.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.green,
            gradient: LinearGradient(
              colors: [
                // Colors.white.withOpacity(start),
                // Colors.white.withOpacity(end),
                Constants.shadesBgColor[2].withOpacity(start),
                Constants.shadesBgColor[2].withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            // borderRadius: BorderRadius.all(Radius.circular(15.0)),
            // border: Border.all(
            //   width: 1.5,
            //   color: Colors.white.withOpacity(0.2),
            // ),
          ),
          child: child,
        ),
      ),
    );
  }
}
