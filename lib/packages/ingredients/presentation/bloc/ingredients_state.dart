part of 'ingredients_bloc.dart';

sealed class IngredientsState extends Equatable {
  const IngredientsState();

  @override
  List<Object?> get props => [];
}

final class IngredientsStateInitial extends IngredientsState {}

final class IngredientsSuccessState extends IngredientsState {
  const IngredientsSuccessState({
    required this.ingredients,
  });

  final List<IngredientEntity> ingredients;
}

final class IngredientsLoadingState extends IngredientsState {}

final class IngredientsErrorState extends IngredientsState {
  const IngredientsErrorState({
    required this.failure,
  });

  final String failure;
}
