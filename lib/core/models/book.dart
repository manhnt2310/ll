class Book {
  const Book({
    required this.id,
    required this.title,
    required this.description,
    required this.cover,
    required this.level,
    required this.totalWords,
    required this.chapters,
  });

  final String id;
  final String title;
  final String description;
  final String cover;
  final String level;
  final int totalWords;
  final List<Chapter> chapters;

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      cover: json['cover'],
      level: json['level'],
      totalWords: json['totalWords'],
      chapters: [],
    );
  }

  static List<Book> listFromJsons(List<dynamic> jsons) {
    return jsons
        .map(
          (json) => Book.fromJson(json),
        )
        .toList();
  }
}

class Chapter {
  const Chapter({
    required this.id,
    required this.title,
    required this.description,
    required this.totalWords,
    required this.sections,
  });

  final int id;
  final String title;
  final String description;
  final int totalWords;
  final List<Section> sections;
}

class Section {
  const Section({
    required this.id,
    required this.title,
    required this.description,
    required this.totalWords,
  });

  final int id;
  final String title;
  final String description;
  final int totalWords;
}
