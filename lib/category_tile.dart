import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/category_dialog.dart';

import 'constants.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String subTitleOne;
  final String subTitleTwo;
  final String subTitleThree;
  final Color categoryGradientOne;
  final Color categoryGradientTwo;

  const CategoryTile({
    Key? key,
    required this.title,
    required this.subTitleOne,
    required this.subTitleTwo,
    required this.subTitleThree,
    required this.categoryGradientOne,
    required this.categoryGradientTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        categoryGradientOne,
        categoryGradientTwo,
      ],
    ).createShader(
      const Rect.fromLTWH(10.0, 0.0, 20.0, 0.0),
    );
    return NeumorphicButton(
      padding: const EdgeInsets.all(10.0),
      onPressed: () {
        showDialog(
            barrierColor: Constants.bgColor.withOpacity(0.8),
            context: context,
            builder: (context) => CategoryDialog(title: title));
      },
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        color: Constants.bgColor,
        depth: 6.0,
        intensity: 0.85,
        shadowDarkColor: Constants.darkShadow,
        shadowLightColor: Constants.lightShadow,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Lensation",
            style: GoogleFonts.cabin(
              fontSize: 27,
              foreground: Paint()..shader = linearGradient,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            subTitleOne + " • " + subTitleTwo + " • " + subTitleThree,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
