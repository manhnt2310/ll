import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ll/common/type_definition.dart';
import 'package:ll/core/models/book.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({
    super.key,
    required this.books,
    required this.onSelectBook,
  });

  final List<Book> books;
  final OnSelectBook onSelectBook;

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
              child: const Text('Tat ca(2) >'),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        BookView(
          book: books[0],
          onSelectBook: onSelectBook,
        ),
        const SizedBox(
          height: 5,
        ),
        BookView(
          book: books[1],
          onSelectBook: onSelectBook,
        )
      ],
    );
  }
}

class BookView extends StatelessWidget {
  const BookView({
    Key? key,
    required this.book,
    required this.onSelectBook,
  }) : super(key: key);

  final Book book;
  final OnSelectBook onSelectBook;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelectBook(book),
      child: Container(
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
            child: CachedNetworkImage(
              height: 70,
              width: 50,
              imageUrl: book.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
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
      ),
    );
  }
}
