import 'package:flutter/material.dart';

typedef OnSelectItemAtIndex = Function(int);

class TopMenuView extends StatefulWidget {
  const TopMenuView({
    super.key,
    required this.totalItems,
    required this.onSelectItemAtIndex,
  });

  final int totalItems;
  final OnSelectItemAtIndex onSelectItemAtIndex;

  @override
  State<TopMenuView> createState() => _TopMenuViewState();
}

class _TopMenuViewState extends State<TopMenuView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = List<Widget>.generate(
      widget.totalItems + 1,
      (index) {
        return TopMenuButton(
          index: index,
          isSelected: index == _selectedIndex,
          onSelectItemAtIndex: (selectedIndex) {
            setState(() {
              _selectedIndex = selectedIndex;
            });

            widget.onSelectItemAtIndex(selectedIndex);
          },
        );
      },
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

class TopMenuButton extends StatelessWidget {
  const TopMenuButton({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onSelectItemAtIndex,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final OnSelectItemAtIndex onSelectItemAtIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          index == 0 ? "All" : '$index',
          style: TextStyle(
            fontSize: isSelected ? 22 : 18,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
