import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/team_detail_dialog.dart';

import 'constants.dart';

class TeamButton extends StatelessWidget {
  final String eventName;
  final int teamStrength;
  final bool Function(bool status) updateTeamStatus;
  TeamButton(
      {Key? key,
      required this.eventName,
      required this.teamStrength,
      required this.updateTeamStatus})
      : super(key: key);

  final TextStyle contentStyle =
      GoogleFonts.cabin(fontSize: 18, fontWeight: FontWeight.w600);
  final TextStyle subContentStyle =
      GoogleFonts.cabin(fontSize: 15, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        bool res = await showDialog(
              context: context,
              builder: (context) => TeamDetailDialog(
                teamStrength: teamStrength,

                ///get the list containing the id of each member
                memberId: List.generate(teamStrength, (index) => 2345),
              ),
            ) ??
            false;
        updateTeamStatus(res);
        print('Res: $res');
      },
      child: Container(
        // margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Constants.lightShadow,
              spreadRadius: 0,
              blurRadius: 20.0,
              offset: Offset(-0.5, -0.5),
            ),
            BoxShadow(
              color: Constants.darkShadow,
              spreadRadius: 0.0,
              blurRadius: 20.0,
              offset: Offset(0.5, 0.5),
            )
          ],
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(123, 31, 246, 1),
            Color.fromRGBO(164, 86, 222, 1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  eventName,
                  style: contentStyle,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '$teamStrength ${teamStrength > 1 ? 'members' : 'member'}',
                    style: subContentStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
