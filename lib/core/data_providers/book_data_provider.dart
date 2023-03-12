import 'package:ll/core/models/book.dart';

class BookDataProvider {
  List<Book> getBooks() {
    final books = [
      const Book(
          id: '1',
          title: 'N1 3000',
          description: '3000 words',
          cover: 'cover',
          level: 'N1',
          totalWords: 3000,
          chapters: [
            Chapter(
              id: 1,
              title: 'Chapter 1',
              description: 'Cuoc song',
              totalWords: 100,
              sections: [
                Section(
                  id: 1,
                  title: 'Section 1',
                  description: 'Gia dinh',
                  totalWords: 50,
                )
              ],
            ),
            Chapter(
              id: 2,
              title: 'Chapter 2',
              description: 'Cong viec',
              totalWords: 100,
              sections: [
                Section(
                  id: 1,
                  title: 'Section 1',
                  description: 'IT',
                  totalWords: 50,
                )
              ],
            ),
          ]),
      const Book(
        id: '2',
        title: 'N2 3000',
        description: '3000 words',
        cover: 'cover',
        level: 'N1',
        totalWords: 3000,
        chapters: [],
      ),
      const Book(
        id: '3',
        title: 'N3 3000',
        description: '3000 words',
        cover: 'cover',
        level: 'N1',
        totalWords: 3000,
        chapters: [],
      ),
      const Book(
        id: '4',
        title: 'N4 3000',
        description: '3000 words',
        cover: 'cover',
        level: 'N1',
        totalWords: 3000,
        chapters: [],
      ),
      const Book(
        id: '5',
        title: 'N5 3000',
        description: '3000 words',
        cover: 'cover',
        level: 'N1',
        totalWords: 3000,
        chapters: [],
      ),
    ];

    return books;
  }
}
