import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  const TitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'N1 3000',
          style: TextStyle(fontSize: 30.0),
        ),
        Container(
          height: 70,
          width: 50,
          color: Colors.blue,
        )
      ],
    );
  }
}
