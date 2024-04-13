import 'package:flutter/material.dart';
import 'package:ll/core/models/word.dart';
import 'package:ll/modules/word_list/widgets/example_view.dart';

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
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => toggleVisibility(),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2],
            ),
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(widget.word.label),
                    ),
                    const Icon(Icons.check),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(widget.word.id.toString()),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(widget.word.translatedLabel),
              ],
            ),
          ),
        ),
        if (isVisible)
          AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: GestureDetector(
              onTap: () => toggleVisibility(),
              child: Column(
                children: widget.word.examples
                    .map((example) => ExampleView(example: example))
                    .toList(),
              ),
            ),
          ),
      ],
    );
  }
}
