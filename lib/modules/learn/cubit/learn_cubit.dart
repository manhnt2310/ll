import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/word.dart';
import 'package:ll/modules/learn/data/learn_data_provider.dart';

part 'learn_state.dart';

class LearnCubit extends Cubit<LearnState> {
  LearnCubit() : super(LearnState());

  final dataProvider = LearnDataProvider();

  void getWordList() async {
    final words = await dataProvider.getWordList();

    emit(
      state.copyWith(words: words),
    );
  }
}
