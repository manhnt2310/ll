import 'package:ll/core/models/example.dart';

class Word {
  const Word({
    required this.id,
    required this.bookId,
    required this.chapterId,
    required this.sectionId,
    required this.label,
    required this.translatedLabel,
    required this.examples,
  });

  final int id;
  final int bookId;
  final int chapterId;
  final int sectionId;
  final String label;
  final String translatedLabel;

  final List<Example> examples;

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      id: json['id'],
      bookId: json['bookId'],
      chapterId: json['chapterId'],
      sectionId: json['sectionId'],
      label: json['label'],
      translatedLabel: json['translatedLabel'],
      examples: Example.listFromJsons(json['examples']),
    );
  }

  static List<Word> listFromJsons(List<dynamic> jsons) {
    return jsons
        .map(
          (json) => Word.fromJson(json),
        )
        .toList();
  }
}
