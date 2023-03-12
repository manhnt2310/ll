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
