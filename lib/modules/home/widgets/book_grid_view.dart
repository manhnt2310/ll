import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class BookGridView extends StatelessWidget {
  const BookGridView({super.key, required this.books});

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Books'),
        SizedBox(
            height: 200,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.5),
              itemBuilder: (context, index) {
                return BookView(book: books[index]);
              },
              itemCount: books.length,
            )),
      ],
    );
  }
}

class BookView extends StatelessWidget {
  const BookView({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: kElevationToShadow[2]),
        padding: const EdgeInsets.all(10),
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
                      children: [Text(book.title)],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text('        '),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            height: 20,
                            width: 25,
                            child: Center(
                              child: Text(book.level),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('${book.totalWords} tu')
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
