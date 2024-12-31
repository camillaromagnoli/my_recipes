// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:my_recipes/packages/ingredients/data/model/ingredient_detail_model.dart';

class IngredientModel {
  final int id;
  final String name;
  final String category;
  final List<IngredientDetailModel> ingredientDetails;
  final List<int> recipes;

  IngredientModel({
    required this.id,
    required this.name,
    required this.category,
    required this.ingredientDetails,
    required this.recipes,
  });

  IngredientModel copyWith({
    int? id,
    String? name,
    String? category,
    List<IngredientDetailModel>? ingredientDetails,
    List<int>? recipes,
  }) {
    return IngredientModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      ingredientDetails: ingredientDetails ?? this.ingredientDetails,
      recipes: recipes ?? this.recipes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category,
      'ingredientDetails': ingredientDetails.map((x) => x.toMap()).toList(),
      'recipes': recipes,
    };
  }

  factory IngredientModel.fromMap(Map<String, dynamic> map) {
    return IngredientModel(
      id: map['id'] as int,
      name: map['name'] as String,
      category: map['category'] as String,
      ingredientDetails: List<IngredientDetailModel>.from(
        (map['ingredientDetails'] as List<int>).map<IngredientDetailModel>(
          (x) => IngredientDetailModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      recipes: List<int>.from(
        (map['recipes'] as List<int>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory IngredientModel.fromJson(String source) =>
      IngredientModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IngredientModel(id: $id, name: $name, category: $category, ingredientDetails: $ingredientDetails, recipes: $recipes)';
  }

  @override
  bool operator ==(covariant IngredientModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.category == category &&
        listEquals(other.ingredientDetails, ingredientDetails) &&
        listEquals(other.recipes, recipes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        category.hashCode ^
        ingredientDetails.hashCode ^
        recipes.hashCode;
  }
}
