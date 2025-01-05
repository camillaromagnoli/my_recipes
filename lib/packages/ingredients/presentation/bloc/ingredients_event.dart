part of 'ingredients_bloc.dart';

abstract class IngredientsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetIngredientsEvent extends IngredientsEvent {}
