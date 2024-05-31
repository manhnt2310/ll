import 'package:flutter/material.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Hom nay'),
              TextButton(
                onPressed: () {
                  debugPrint('Xem thong ke');
                },
                child: const Text('Xem thong ke >'),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(6),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('So gio hoc'),
                          Text('1 gio 10 phut'),
                        ]),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(6),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('So luong'),
                          Text('90 tu'),
                        ]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
