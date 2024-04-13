part of 'word_list_cubit.dart';

class WordListState {
  final List<Word> words;

  WordListState({
    this.words = const [],
  });

  WordListState copyWith({
    List<Word>? words,
  }) {
    return WordListState(
      words: words ?? this.words,
    );
  }
}
