import 'package:categories_page/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21242B),
      appBar: AppBar(
        title: Text(
          'Categories',
          style: GoogleFonts.cabin(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF21242B),
        shadowColor: Colors.transparent,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: 16,
        itemBuilder: (BuildContext context, int index) {
          return const CategoryTile(
            categoryGradientOne: Color(0xFFC27B07),
            categoryGradientTwo: Color(0xFFFADC50),
            subTitleOne: "Word 1",
            subTitleTwo: "Word 2",
            subTitleThree: "Word 3",
            title: "Lensation",
          );
        },
      ),
    );
  }
}
