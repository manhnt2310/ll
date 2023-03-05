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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('asfhuiafbuia'),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text('Can on tap'),
                            ],
                          ),
                          const Text('20 words'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('asfhuiafbuia-wefsw'),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text('Can on tap'),
                            ],
                          ),
                          const Text('20 words'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
