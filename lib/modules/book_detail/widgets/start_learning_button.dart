import 'package:flutter/material.dart';

class StartLearningButton extends StatelessWidget {
  const StartLearningButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[2],
        color: Colors.red,
      ),
      height: 60,
      width: double.infinity,
      child: const Center(
          child: Text(
        'BAT DAU HOC NGAY',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      )),
    );
  }
}
