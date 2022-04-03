import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/constants.dart';
import 'package:neurmorphism_faq/neumorphic_button.dart';
import 'package:neurmorphism_faq/team_button.dart';

import 'create_team_page.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({Key? key}) : super(key: key);

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  final TextStyle buttonText =
      GoogleFonts.cabin(fontSize: 25, fontWeight: FontWeight.w600);

  final TextStyle titleText = GoogleFonts.cabin(
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );

  final TextStyle hintStyle = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white.withOpacity(0.4),
  );

  int joinedTeams = 0;

  void displayBottomSheet(BuildContext context, String title) {
    final height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      backgroundColor: Constants.bottomSheetColor,
      // barrierColor: Constants.bottomSheetColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Constants.bottomSheetRadius,
            topRight: Constants.bottomSheetRadius),
      ),
      context: context,
      builder: (context) => ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: height / 3, minHeight: height / 3 - 30),
        child: Container(
          alignment: Alignment.center,
          // decoration: const BoxDecoration(color: Constants.bgColor),
          child: Text(title),
        ),
      ),
    );
  }

  Future<String> joinTeam(BuildContext context) async {
    final joinButtonStyle = GoogleFonts.montserrat(
      color: Color.fromRGBO(22, 182, 148, 1),
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
    bool _submitted = false;
    TextEditingController teamIdController = TextEditingController();
    String res = await showDialog(
          barrierColor: Constants.barrierColor,
          context: context,
          builder: (context) =>
              StatefulBuilder(builder: (context, StateSetter setState) {
            return ValueListenableBuilder(
              valueListenable: teamIdController,
              builder: (context, _, __) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: Constants.bgColor,
                content: TextField(
                  controller: teamIdController,
                  decoration: InputDecoration(
                      hintText: 'Team Code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      errorText: !_submitted
                          ? null
                          : teamIdController.value.text.isEmpty
                              ? 'Team code cannot be empty.'
                              : null,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      hintStyle: hintStyle),
                  onSubmitted: (teamId) => teamIdController.text = teamId,
                ),
                actions: [
                  Center(
                    child: NeumorphicButton(
                      onTap: () {
                        setState(() => _submitted = true);
                        if (_submitted) {
                          if (teamIdController.value.text.isNotEmpty) {
                            ///VALIDATE TEAM CODE IF VALID POP THE VALUE ELSE POP EMPTY
                            Navigator.of(context).pop(teamIdController.text);
                          }
                        }
                      },
                      title: Text(
                        'JOIN',
                        style: joinButtonStyle,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ) ??
        '';
    return res;
  }

  // Widget myButton(String title, BuildContext context, bool joinTeamPressed) {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.bgColor,
        body: Container(
          width: MediaQuery.of(context).size.width,

          // margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          margin: EdgeInsets.only(top: kToolbarHeight),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.only(bottom: 10.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Constants.underlineColor, width: 3),
                        ),
                      ),
                      child: Text('Teams', style: titleText),
                    ),
                    const SizedBox(height: 70),
                    NeumorphicButton(
                        title: Text('Join Team', style: buttonText),
                        onTap: () async {
                          var res = await joinTeam(context);

                          ///VALIDATE THE TEAM CODE, IF VALID GET TEAM DETAILS AND UPDATE joinedTeams
                          if (res.isEmpty) {
                            Fluttertoast.showToast(msg: 'Failed to add :(');
                          } else {
                            setState(() {
                              joinedTeams++;
                            });
                          }
                        }),
                    const SizedBox(
                      height: 50,
                    ),
                    NeumorphicButton(
                        title: Text('Create Team', style: buttonText),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const CreateTeamPage(),
                            ),
                          );
                        }),
                  ],
                ),
              ),

              ///show only if keyboard invisible
              if (!(MediaQuery.of(context).viewInsets.bottom > 100))
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: height / 3,
                        minHeight: height / 3 - 30,
                        minWidth: width),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Constants.bottomSheetRadius,
                              topRight: Constants.bottomSheetRadius),
                          color: Constants.bottomSheetColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              'Current Teams',
                              style: buttonText,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: width,
                                maxHeight: 100,
                                minWidth: width - 30),
                            child: joinedTeams <= 0
                                ? Center(
                                    child: Text(
                                      'You are currently part of no teams.\nJoin or Create one now.',
                                      style: buttonText,
                                    ),
                                  )
                                : ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, i) => Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: TeamButton(
                                            eventName: 'Event',
                                            teamStrength: i + 2,
                                            updateTeamStatus: (status) {
                                              ///if team is left we update value
                                              if (status == true) {
                                                setState(() {
                                                  joinedTeams--;
                                                });
                                              }
                                              return status;
                                            },
                                          ),
                                        ),
                                    separatorBuilder: (context, i) =>
                                        const SizedBox(
                                          width: 2,
                                        ),
                                    itemCount: joinedTeams),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
