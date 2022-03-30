import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/constants.dart';

import 'custom_dialog.dart';

class CategoryDialog extends StatelessWidget {
  final String title;
  const CategoryDialog({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle yellowText = GoogleFonts.cabin(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Color.fromRGBO(252, 222, 61, 1),
    );

    final TextStyle titleTextStyle = GoogleFonts.cabin(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      color: Colors.white,
    );

    return CustomDialog(
      elevation: 0,
      backgroundColor: Constants.bgColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                iconSize: 20,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(
                  false,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(title, style: titleTextStyle),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
            child: Text(
              lorem(paragraphs: 2),
              style: GoogleFonts.cabin(fontSize: 14),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check out the Events',
                style: yellowText,
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(
                  true,
                ),
                child: Container(
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromRGBO(252, 222, 61, 1),
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Constants.darkShadow,
                        offset: Offset(4, 4),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Constants.lightShadow,
                        offset: Offset(-4, -4),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
