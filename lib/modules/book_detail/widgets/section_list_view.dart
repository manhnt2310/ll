import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class SectionListView extends StatefulWidget {
  const SectionListView({super.key, required this.chapter});

  final Chapter chapter;

  @override
  State<SectionListView> createState() => _SectionListViewState();
}

class _SectionListViewState extends State<SectionListView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 2 / 3,
        color: Colors.grey[100],
        child: ListView.builder(
          itemCount: widget.chapter.sections.length,
          itemBuilder: (context, index) {
            return SectionView(section: widget.chapter.sections[index]);
          },
        ),
      ),
    );
  }
}

class SectionView extends StatelessWidget {
  const SectionView({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[2],
        color: Colors.white,
      ),
      height: 100,
      child: Row(
        children: [
          Column(
            children: [Text(section.id.toString())],
          )
        ],
      ),
    );
  }
}
