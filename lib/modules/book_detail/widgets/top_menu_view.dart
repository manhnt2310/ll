import 'package:flutter/material.dart';

typedef OnSelectItemAtIndex = Function(int);

class TopMenuView extends StatelessWidget {
  const TopMenuView({
    super.key,
    required this.totalItems,
    required this.onSelectItemAtIndex,
  });

  final int totalItems;
  final OnSelectItemAtIndex onSelectItemAtIndex;

  @override
  Widget build(BuildContext context) {
    final items = List<Widget>.generate(
      totalItems,
      (index) => Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 238, 238),
          borderRadius: BorderRadius.circular(25),
        ),
        width: 50,
        height: 50,
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () => onSelectItemAtIndex(index),
          child: Text(
            '${index + 1}',
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );

    return SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Wrap(
          spacing: 8,
          children: items,
        ),
      ),
    );
  }
}
