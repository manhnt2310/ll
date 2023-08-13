import 'package:flutter/material.dart';
import 'package:ll/modules/word_list/presentation/word_list_view.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final Icon icon;
  final String title;
  final String subtitle;

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
          subtitle: '150 words',
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
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final Icon icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WordListView(bookId: 1),
          ),
        );
      },
      child: Container(
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
              Text(subtitle)
            ],
          )),
    );
  }
}
