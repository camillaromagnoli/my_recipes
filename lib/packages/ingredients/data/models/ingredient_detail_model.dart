import 'package:my_recipes/packages/ingredients/domain/entities/ingedient_details_entity.dart';

class IngredientDetailModel extends IngredientDetailsEntity {
  const IngredientDetailModel({
    required super.type,
    required super.value,
    required super.date,
    required super.expirationDate,
  });

  factory IngredientDetailModel.fromJson(Map<String, dynamic> json) {
    return IngredientDetailModel(
      type: json['type'],
      value: json['value'],
      date: DateTime.parse(json['date']),
      expirationDate: DateTime.parse(
        json['expirationDate'],
      ),
    );
  }
}
