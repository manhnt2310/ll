import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ll/core/models/book.dart';

class BookDetailDataProvider {
  Future<List<Book>> getBooks() async {
    final String response = await rootBundle.loadString(
      'lib/assets/datasource/books.json',
    );

    final data = await json.decode(response);
    final books = Book.listFromJsons(data);

    return books;
  }
}
