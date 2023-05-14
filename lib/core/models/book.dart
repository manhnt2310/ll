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
      chapters: Chapter.listFromJsons(json['chapters']),
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

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      totalWords: json['totalWords'],
      sections: Section.listFromJsons(json['sections']),
    );
  }

  static List<Chapter> listFromJsons(List<dynamic> jsons) {
    return jsons
        .map(
          (json) => Chapter.fromJson(json),
        )
        .toList();
  }
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

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      totalWords: json['totalWords'],
    );
  }

  static List<Section> listFromJsons(List<dynamic> jsons) {
    return jsons
        .map(
          (json) => Section.fromJson(json),
        )
        .toList();
  }
}
