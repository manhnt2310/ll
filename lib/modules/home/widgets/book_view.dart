import 'package:flutter/material.dart';

class JapaneseView extends StatelessWidget {
  const JapaneseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Japanese'),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2]),
          padding: const EdgeInsets.all(10),
          height: 90,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 50,
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
                              height: 20,
                              width: 20,
                              color: Colors.blue,
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
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: kElevationToShadow[2]),
          padding: const EdgeInsets.all(10),
          height: 90,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 50,
                    color: Colors.red,
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [Text('N2sdfgs2500')],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text('       '),
                          Container(
                              height: 20,
                              width: 20,
                              color: Colors.red,
                              child: const Center(
                                child: Text('N2'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('2500 words')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
