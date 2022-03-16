import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.6),
            Colors.white.withOpacity(0.3),
          ],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 1.5,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
    );
  }
}
