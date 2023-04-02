import 'package:flutter/material.dart';

class SectionListView extends StatefulWidget {
  const SectionListView({super.key});

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
      ),
    );
  }
}
