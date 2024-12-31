// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IngredientDetailModel {
  final int type;
  final int value;
  final DateTime date;
  final DateTime expirationDate;

  IngredientDetailModel({
    required this.type,
    required this.value,
    required this.date,
    required this.expirationDate,
  });

  IngredientDetailModel copyWith({
    int? type,
    int? value,
    DateTime? date,
    DateTime? expirationDate,
  }) {
    return IngredientDetailModel(
      type: type ?? this.type,
      value: value ?? this.value,
      date: date ?? this.date,
      expirationDate: expirationDate ?? this.expirationDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
      'date': date.millisecondsSinceEpoch,
      'expirationDate': expirationDate.millisecondsSinceEpoch,
    };
  }

  factory IngredientDetailModel.fromMap(Map<String, dynamic> map) {
    return IngredientDetailModel(
      type: map['type'] as int,
      value: map['value'] as int,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      expirationDate:
          DateTime.fromMillisecondsSinceEpoch(map['expirationDate'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory IngredientDetailModel.fromJson(String source) =>
      IngredientDetailModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IngredientDetailModel(type: $type, value: $value, date: $date, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(covariant IngredientDetailModel other) {
    if (identical(this, other)) return true;

    return other.type == type &&
        other.value == value &&
        other.date == date &&
        other.expirationDate == expirationDate;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        value.hashCode ^
        date.hashCode ^
        expirationDate.hashCode;
  }
}
