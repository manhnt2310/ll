import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key, required this.books});

  final List<Book> books;

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
        BookView(book: books[0]),
        const SizedBox(
          height: 5,
        ),
        BookView(book: books[1])
      ],
    );
  }
}

class BookView extends StatelessWidget {
  const BookView({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  children: [
                    Text(book.title),
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
                      Text('${book.totalWords} words'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
