import 'package:ll/core/models/book.dart';

class BookDataProvider {
  List<Book> getBooks() {
    final books = [
      const Book(
          id: 1,
          title: 'N1 3000',
          description: 'N1 3000',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000),
      const Book(
          id: 2,
          title: 'N2 3000',
          description: 'N1 3000',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000),
      const Book(
          id: 3,
          title: 'N3 3000',
          description: 'N1 3000',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000),
      const Book(
          id: 4,
          title: 'N4 3000',
          description: 'N1 3000',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000),
      const Book(
          id: 5,
          title: 'N5 3000',
          description: 'N1 3000',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000),
    ];

    return books;
  }
}
