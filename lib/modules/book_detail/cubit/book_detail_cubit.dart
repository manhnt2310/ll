import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/data/book_detail_data_provider.dart';

part 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  BookDetailCubit() : super(BookDetailState());

  final dataProvider = BookDetailDataProvider();

  void getBooks(String id) async {
    final books = await dataProvider.getBooks();
    emit(state.copyWith(books: books));
  }
}
