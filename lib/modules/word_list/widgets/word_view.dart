import 'package:flutter/material.dart';
import 'package:ll/core/models/word.dart';

class WordView extends StatelessWidget {
  const WordView({
    super.key,
    required this.word,
  });

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[2],
      ),
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(word.label),
              ),
              const Icon(Icons.check),
              const SizedBox(
                width: 10,
              ),
              Text(word.id.toString()),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(word.translatedLabel),
        ],
      ),
    );
  }
}
