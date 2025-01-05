import 'package:equatable/equatable.dart';

class IngredientDetailsEntity extends Equatable {
  const IngredientDetailsEntity({
    required this.type,
    required this.value,
    required this.date,
    required this.expirationDate,
  });

  final int type;
  final int value;
  final DateTime date;
  final DateTime expirationDate;

  @override
  List<Object?> get props => [
        type,
        value,
        date,
        expirationDate,
      ];
}
