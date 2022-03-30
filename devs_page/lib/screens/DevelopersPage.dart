import 'package:devs_page/widgets/DeveloperTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class DevelopersPage extends StatefulWidget {
  const DevelopersPage({Key? key}) : super(key: key);

  @override
  State<DevelopersPage> createState() => _DevelopersPageState();
}

class _DevelopersPageState extends State<DevelopersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1B1D23).withOpacity(0.8),
        appBar: AppBar(
          title: Text(
            'Meet the Developers',
            style: GoogleFonts.cabin(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF21242B),
          shadowColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Core Committee",
                  style: GoogleFonts.cabin(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeveloperTile(
                    name: "Prakhar Bhatnagar",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: true,
                  ),
                  DeveloperTile(
                    name: "Pranshul Goyal",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeveloperTile(
                    name: "Sanya",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: true,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Divider(
                  height: 20,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Organisers",
                  style: GoogleFonts.cabin(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeveloperTile(
                    name: "Praveen",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: false,
                  ),
                  DeveloperTile(
                    name: "Divyansh",
                    imgURL: "https://",
                    githubURL: "https://github.com/divyanshkul",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: false,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeveloperTile(
                    name: "Kavya",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: false,
                  ),
                  DeveloperTile(
                    name: "Shikhar",
                    imgURL: "https://",
                    githubURL: "https://",
                    instaURL: "https://",
                    linkedinURL: "https://",
                    isCC: false,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
