import 'package:flutter/material.dart';

import 'event_tile.dart';

class EventsList extends StatelessWidget {
  const EventsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        int colorIndex = index % 4;
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: EventTile(
            colorIndex: colorIndex,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 10,
    );
  }
}
