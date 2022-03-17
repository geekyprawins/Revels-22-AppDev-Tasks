import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFE580C),
            Color(0xFFD22CD8),
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: const Color(0xFFFE580C),
        ),
      ),
      child: ListTile(
        minLeadingWidth: 25,
        textColor: Colors.white,
        iconColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        trailing: const Icon(
          Icons.arrow_forward_sharp,
          size: 30,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "13",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "April",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                const SizedBox(
                    height: 81, child: VerticalDivider(color: Colors.white)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Solo Dance",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Category Name",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        // subtitle: const Text(
        //   "Category Name",
        //   style: TextStyle(fontSize: 13),
        // ),
      ),
    );
  }
}
