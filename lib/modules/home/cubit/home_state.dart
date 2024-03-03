part of 'home_cubit.dart';

class HomeState {
  final List<Book> books;

  HomeState({
    this.books = const [],
  });

  HomeState copyWith({
    List<Book>? books,
  }) {
    return HomeState(
      books: books ?? this.books,
    );
  }
}
