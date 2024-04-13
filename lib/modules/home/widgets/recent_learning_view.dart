import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ll/common/type_definition.dart';
import 'package:ll/core/models/book.dart';

class RecentLearningView extends StatelessWidget {
  const RecentLearningView({
    super.key,
    required this.book,
    required this.onSelectBook,
  });

  final Book book;
  final OnSelectBook onSelectBook;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelectBook(book),
      child: Column(
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
            height: 240,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    CachedNetworkImage(
                      width: 70,
                      height: 100,
                      imageUrl: book.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(book.title),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
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
                              width: 8,
                            ),
                            const Text('3000 words')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
      ),
    );
  }
}
