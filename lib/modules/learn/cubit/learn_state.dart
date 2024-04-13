part of 'learn_cubit.dart';

class LearnState {
  final List<Word> words;

  LearnState({
    this.words = const [],
  });

  LearnState copyWith({
    List<Word>? words,
  }) {
    return LearnState(
      words: words ?? this.words,
    );
  }
}
