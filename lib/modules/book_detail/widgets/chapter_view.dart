import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class ChapterView extends StatelessWidget {
  const ChapterView({
    super.key,
    required this.chapter,
    required this.onSelectSection,
  });

  final Chapter chapter;
  final VoidCallback onSelectSection;

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
                  IconButton(
                    onPressed: onSelectSection,
                    icon: const Icon(Icons.filter_list),
                  )
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
