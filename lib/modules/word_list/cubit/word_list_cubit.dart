import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/word.dart';
import 'package:ll/modules/word_list/data/word_list_data_provider.dart';

part 'word_list_state.dart';

class WordListCubit extends Cubit<WordListState> {
  WordListCubit() : super(WordListState());

  final dataProvider = WordListDataProvider();

  void getWordList() async {
    final words = await dataProvider.getWordList();

    emit(
      state.copyWith(words: words),
    );
  }
}
