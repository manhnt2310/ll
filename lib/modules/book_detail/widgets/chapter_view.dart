import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class ChapterView extends StatelessWidget {
  const ChapterView({super.key, required this.chapter});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            boxShadow: kElevationToShadow[2],
            color: Colors.white,
          ),
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chapter.title,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  const IconButton(
                      onPressed: null, icon: Icon(Icons.filter_list))
                ],
              ),
              Text(chapter.description, style: const TextStyle(fontSize: 15.0)),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ItemView extends StatelessWidget {
  const ItemView({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: kElevationToShadow[2],
          color: Colors.white,
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.format_list_bulleted),
                SizedBox(
                  width: 6,
                ),
                Text('Tat ca'),
              ],
            ),
            const TextButton(onPressed: null, child: Text('200 words >'))
          ],
        ));
  }
}
