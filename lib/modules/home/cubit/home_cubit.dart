import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/home/data/home_data_provider.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  final dataProvider = HomeDataProvider();

  void getBooks() async {
    final books = await dataProvider.getBooks();

    emit(
      state.copyWith(books: books),
    );
  }
}
