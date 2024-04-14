part of 'book_detail_cubit.dart';

class BookDetailState {
  final List<Book> books;
  final int selectedChapterIndex;

  BookDetailState({
    this.books = const [],
    this.selectedChapterIndex = 0,
  });

  BookDetailState copyWith({
    List<Book>? books,
    int? selectedChapterIndex,
  }) {
    return BookDetailState(
      books: books ?? this.books,
      selectedChapterIndex: selectedChapterIndex ?? this.selectedChapterIndex,
    );
  }
}
