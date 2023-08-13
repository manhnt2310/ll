import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ll/core/models/word.dart';

class WordDataProvider {
  Future<List<Word>> getWords(int bookId) async {
    final String response = await rootBundle.loadString(
      'lib/assets/datasource/words.json',
    );

    final data = await json.decode(response);
    final words = Word.listFromJsons(data);

    // List<Word> filteredWords = [];

    // for (final word in words) {
    //   if (word.bookId == bookId) {
    //     filteredWords.add(word);
    //   }
    // }

    // for (int i = 0; i < words.length; i++) {
    //   if (words[i].bookId == bookId) {
    //     filteredWords.add(words[i]);
    //   }
    // }

    List<Word> filteredWords = words
        .where(
          (word) => word.bookId == bookId,
        )
        .toList();

    return filteredWords;
  }
}
