part of 'book_detail_cubit.dart';

class BookDetailState {
  final List<Book> books;

  BookDetailState({
    this.books = const [],
  });

  BookDetailState copyWith({
    List<Book>? books,
  }) {
    return BookDetailState(
      books: books ?? this.books,
    );
  }
}
