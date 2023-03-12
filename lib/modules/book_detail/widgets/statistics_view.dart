import 'package:flutter/material.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ItemView(
          icon: Icon(Icons.format_list_bulleted),
          title: 'Tat ca',
          subtitle: '200 words >',
        ),
        SizedBox(
          height: 5,
        ),
        ItemView(
          icon: Icon(
            Icons.check,
            color: Colors.grey,
          ),
          title: 'Chua hoc',
          subtitle: '150 words >',
        ),
        SizedBox(
          height: 5,
        ),
        ItemView(
          icon: Icon(
            Icons.check,
            color: Colors.red,
          ),
          title: 'Dang hoc',
          subtitle: '30 words >',
        ),
        SizedBox(
          height: 5,
        ),
        ItemView(
          icon: Icon(
            Icons.check,
            color: Colors.green,
          ),
          title: 'Can on tap',
          subtitle: '10 words >',
        ),
      ],
    );
  }
}

class ItemView extends StatelessWidget {
  const ItemView({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: kElevationToShadow[2],
          color: Colors.white,
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(
                  width: 6,
                ),
                Text(title),
              ],
            ),
            TextButton(onPressed: null, child: Text(subtitle))
          ],
        ));
  }
}
