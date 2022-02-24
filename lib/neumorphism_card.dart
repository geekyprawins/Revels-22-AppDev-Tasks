import 'package:flutter/material.dart';

class NeumorphismCard extends StatelessWidget {
  final String text;
  const NeumorphismCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            const BoxShadow(
                color: Colors.black54,
                offset: Offset(4.0, 4.0),
                blurRadius: 5.0,
                spreadRadius: 0.0),
            BoxShadow(
                color: Colors.grey[800]!,
                offset: const Offset(-4.0, -4.0),
                blurRadius: 5.0,
                spreadRadius: 0.0),
          ]),
    );
  }
}
