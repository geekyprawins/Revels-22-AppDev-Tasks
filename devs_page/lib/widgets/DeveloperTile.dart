import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperTile extends StatefulWidget {
  const DeveloperTile({
    Key? key,
    required this.name,
    required this.imgURL,
    required this.instaURL,
    required this.githubURL,
    required this.linkedinURL,
    required this.isCC,
  }) : super(key: key);

  final String name;
  final String imgURL;
  final String instaURL;
  final String githubURL;
  final String linkedinURL;
  final bool isCC;
  @override
  State<DeveloperTile> createState() => _DeveloperTileState();
}

class _DeveloperTileState extends State<DeveloperTile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Color iconColor =
        widget.isCC ? const Color(0xFFfcde3d) : const Color(0xFFe9436f);

    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 220,
      width: width * 0.45,
      child: Neumorphic(
        style: const NeumorphicStyle(
          color: Color(0xFF21242B),
          depth: 4,
          intensity: 0.5,
          lightSource: LightSource.topLeft,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Column(
            children: [
              CircleAvatar(
                minRadius: 40,
                maxRadius: 50,
                backgroundImage: NetworkImage(
                  widget.imgURL,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.name,
                style: GoogleFonts.cabin(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: iconColor,
                      size: 24,
                    ),
                    onPressed: () => {
                      _launchURL(widget.instaURL),
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: iconColor,
                      size: 24,
                    ),
                    onPressed: () => {
                      _launchURL(widget.githubURL),
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: iconColor,
                      size: 24,
                    ),
                    onPressed: () => {
                      _launchURL(widget.linkedinURL),
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    try {
      await launch(url);
    } catch (e) {
      print('Could not launch $url error: $e');
    }
  }
}
