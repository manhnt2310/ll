import 'package:flutter/material.dart';
import 'package:ll/core/models/word.dart';

class WordView extends StatefulWidget {
  const WordView({
    super.key,
    required this.word,
  });

  final Word word;

  @override
  State<WordView> createState() => _WordViewState();
}

class _WordViewState extends State<WordView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[2],
        color: Colors.white,
      ),
      height: 300,
      width: double.infinity,
      child: Center(
        child: Text(
          widget.word.label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
