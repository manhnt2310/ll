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
          padding: const EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          color: Colors.white,
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
                        children: [const Text('N1sdfgs3000')],
                      ),
                      Row(
                        children: [
                          const Text('       '),
                          Container(
                              height: 20,
                              width: 20,
                              color: Colors.blue,
                              child: Center(
                                child: const Text('N1'),
                              )),
                          const Text('     '),
                          const Text('3000 words')
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const IconButton(onPressed: null, icon: Icon(Icons.add)),
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
              Row(
                children: [
                  const IconButton(onPressed: null, icon: Icon(Icons.add)),
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
              Row(
                children: [
                  const IconButton(onPressed: null, icon: Icon(Icons.add)),
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
