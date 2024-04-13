import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ll/core/models/word.dart';

class LearnDataProvider {
  Future<List<Word>> getWordList() async {
    // final String response = await rootBundle.loadString(
    //   'lib/assets/datasource/words.json',
    // );
    // final data = await json.decode(response);
    // return data.map((e) => Word.fromJson(e)).toList();
    return [
      const Word(
        id: 1,
        bookId: 1,
        chapterId: 1,
        sectionId: 1,
        label: 'doctor',
        translatedLabel: 'bac si',
        examples: [], //'what is a doctor?, How many doctor?',
      )
    ];
  }
}
