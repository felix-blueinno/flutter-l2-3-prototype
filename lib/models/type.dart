class Type {
  final String english;
  final String chinese;
  final String japanese;
  final List<String> effective;
  final List<String> ineffective;
  final List<String> noEffect;

  Type({
    required this.english,
    required this.chinese,
    required this.japanese,
    required this.effective,
    required this.ineffective,
    required this.noEffect,
  });

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      english: json['english'],
      chinese: json['chinese'],
      japanese: json['japanese'],
      effective: List<String>.from(json['effective']),
      ineffective: List<String>.from(json['ineffective']),
      noEffect: List<String>.from(json['no_effect']),
    );
  }
}
