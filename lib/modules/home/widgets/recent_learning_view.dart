import 'package:flutter/material.dart';

class RecentLearningView extends StatelessWidget {
  const RecentLearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Da hoc gan day'),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2]),
          padding: const EdgeInsets.all(10),
          height: 220,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 70,
                    color: Colors.blue,
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [Text('N1sdfgs3000')],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text('       '),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 20,
                              width: 25,
                              child: const Center(
                                child: Text('N1'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('3000 words')
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Chua hoc'),
                            Text('150 words'),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Dang hoc'),
                            Text('30 words'),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Can on tap'),
                            Text('10 words'),
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
