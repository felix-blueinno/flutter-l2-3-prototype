class Move {
  final int accuracy;
  final String category;
  final String cname;
  final String ename;
  final int id;
  final String jname;
  final int power;
  final int pp;
  final String type;

  Move({
    required this.accuracy,
    required this.category,
    required this.cname,
    required this.ename,
    required this.id,
    required this.jname,
    required this.power,
    required this.pp,
    required this.type,
  });

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      accuracy: json['accuracy'],
      category: json['category'],
      cname: json['cname'],
      ename: json['ename'],
      id: json['id'],
      jname: json['jname'],
      power: json['power'],
      pp: json['pp'],
      type: json['type'],
    );
  }
}
