import 'package:featured_events/widgets/featured_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedEvents extends StatefulWidget {
  const FeaturedEvents({Key? key}) : super(key: key);

  @override
  State<FeaturedEvents> createState() => _FeaturedEventsState();
}

class _FeaturedEventsState extends State<FeaturedEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21242B),
      appBar: AppBar(
        title: Text(
          'Featured Events',
          style: GoogleFonts.cabin(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF21242B),
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        //items.map().toList()
        child: Column(
          children: [
            const FeaturedTile(
              fullWidth: true,
              categoryGradientOne: Color(0xFFC27B07),
              categoryGradientTwo: Color(0xFFFADC50),
              eventColor: Color(0xFFFADC50),
              eventTitle: "Lensation",
              eventCategory: "CATEGORY",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
              ],
            ),
            const FeaturedTile(
              fullWidth: true,
              categoryGradientOne: Color(0xFFC27B07),
              categoryGradientTwo: Color(0xFFFADC50),
              eventColor: Color(0xFFFADC50),
              eventTitle: "Lensation",
              eventCategory: "CATEGORY",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
                FeaturedTile(
                  fullWidth: false,
                  categoryGradientOne: Color(0xFFC27B07),
                  categoryGradientTwo: Color(0xFFFADC50),
                  eventColor: Color(0xFFFADC50),
                  eventTitle: "Lensation",
                  eventCategory: "CATEGORY",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
