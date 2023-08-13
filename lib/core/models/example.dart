class Example {
  const Example({
    required this.label,
    required this.translatedLabel,
  });

  final String label;
  final String translatedLabel;

  factory Example.fromJson(Map<String, dynamic> json) {
    return Example(
      label: json['label'],
      translatedLabel: json['translatedLabel'],
    );
  }

  get length => null;

  static List<Example> listFromJsons(List<dynamic>? jsons) {
    if (jsons == null) return [];

    return jsons
        .map(
          (json) => Example.fromJson(json),
        )
        .toList();
  }
}
