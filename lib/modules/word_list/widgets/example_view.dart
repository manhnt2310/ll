import 'package:flutter/material.dart';
import 'package:ll/core/models/word.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({
    super.key,
    required this.word,
  });

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 233, 233),
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[2],
      ),
      height: 70,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(word.examples[0].label),
          const SizedBox(
            height: 8,
          ),
          Text(word.examples[0].translatedLabel),
        ],
      ),
    );
  }
}
