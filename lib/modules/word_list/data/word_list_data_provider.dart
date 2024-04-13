import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ll/core/models/word.dart';

class WordListDataProvider {
  Future<List<Word>> getWordList() async {
    final String response = await rootBundle.loadString(
      'lib/assets/datasource/words.json',
    );
    final data = await json.decode(response);
    return data.map((e) => Word.fromJson(e)).toList();
  }
}
