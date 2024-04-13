import 'package:flutter/material.dart';
import 'package:ll/core/models/example.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({
    super.key,
    required this.example,
  });

  final Example example;

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
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(example.label),
          const SizedBox(
            height: 8,
          ),
          Text(example.translatedLabel),
        ],
      ),
    );
  }
}
