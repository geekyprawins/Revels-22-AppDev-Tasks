import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'neumorphic_button.dart';

class TeamDetailDialog extends StatelessWidget {
  final int teamStrength;
  final List<int> memberId;
  TeamDetailDialog(
      {Key? key, required this.teamStrength, required this.memberId})
      : super(key: key);
  final TextStyle leaveButtonStyle = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  final TextStyle titleStyle = GoogleFonts.montserrat(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  final TextStyle subTitleStyle = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white.withOpacity(0.7),
  );
  final TextStyle memberStyle = GoogleFonts.cabin(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  final TextStyle teamCodeStyle = GoogleFonts.cabin(
    color: Color.fromRGBO(22, 182, 148, 1),
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  Widget buildMemberTile(int index) {
    return Row(
      children: [
        Text(
          'Member ${index + 1}',
          style: memberStyle,
        ),
        const Spacer(),
        Text(
          '#${memberId[index]}',
          style: teamCodeStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Constants.bgColor,
      title: Column(
        children: [
          Text(
            'Event',
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Team Code',
            style: subTitleStyle,
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          teamStrength,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: buildMemberTile(index),
          ),
        ),
      ),
      actions: [
        Center(
          child: NeumorphicButton(
            onTap: () {
              Navigator.of(context).pop(true);
            },
            title: Text(
              'Leave',
              style: leaveButtonStyle,
            ),
          ),
        )
      ],
    );
  }
}
