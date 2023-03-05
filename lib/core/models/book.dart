class Book {
  const Book({
    required this.id,
    required this.title,
    required this.description,
    required this.cover,
    required this.level,
    required this.totalWords,
  });

  final String id;
  final String title;
  final String description;
  final String cover;
  final String level;
  final int totalWords;
}
