import 'package:flutter/material.dart';

class NeumorphismCard extends StatelessWidget {
  final String text;
  final double height;
  const NeumorphismCard({Key? key, required this.text, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade700,
            offset: const Offset(4.0, 4.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
          const BoxShadow(
            color: Colors.blueGrey,
            offset: Offset(-4.0, -4.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
    );
  }
}
