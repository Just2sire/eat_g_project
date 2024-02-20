import 'dart:convert';

class Meal {
  final int id;
  final String picture;
  final String foodName;
  final String type;
  final int goodness;
  const Meal({
    required this.id,
    required this.picture,
    required this.foodName,
    required this.type,
    required this.goodness,
  });

  Meal copyWith({
    int? id,
    String? picture,
    String? foodName,
    String? type,
    int? goodness,
  }) {
    return Meal(
      id: id ?? this.id,
      picture: picture ?? this.picture,
      foodName: foodName ?? this.foodName,
      type: type ?? this.type,
      goodness: goodness ?? this.goodness,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'picture': picture,
      'foodName': foodName,
      'type': type,
      'goodness': goodness,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      id: map['id']?.toInt() ?? 0,
      picture: map['picture'] ?? '',
      foodName: map['foodName'] ?? '',
      type: map['type'] ?? '',
      goodness: map['goodness']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meal.fromJson(String source) => Meal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Meal(id: $id, picture: $picture, foodName: $foodName, type: $type, goodness: $goodness)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Meal &&
      other.id == id &&
      other.picture == picture &&
      other.foodName == foodName &&
      other.type == type &&
      other.goodness == goodness;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      picture.hashCode ^
      foodName.hashCode ^
      type.hashCode ^
      goodness.hashCode;
  }
}
