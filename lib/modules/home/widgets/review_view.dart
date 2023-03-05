import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Can on tap'),
            TextButton(
              onPressed: () {
                debugPrint('Tat ca');
              },
              child: const Text('Tat ca(5) >'),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2]),
          height: 70,
          child: Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: kElevationToShadow[2]),
              height: 70,
              width: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text('asfhuiafbuia'),
                  ],
                ),
                Row(
                  children: const [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.check,
                          color: Colors.green,
                        )),
                    Text('Can on tap'),
                  ],
                ),
              ],
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2]),
          height: 70,
          child: Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: kElevationToShadow[2]),
              height: 70,
              width: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text('asfhuiafbuia-asfwe'),
                  ],
                ),
                Row(
                  children: const [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.check,
                          color: Colors.green,
                        )),
                    Text('Can on tap')
                  ],
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }
}
