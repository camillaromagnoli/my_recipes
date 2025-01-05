import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_recipes/packages/ingredients/domain/entities/ingredient_entity.dart';
import 'package:my_recipes/packages/ingredients/domain/usecase/get_ingredients_usecase.dart';

part 'ingredients_event.dart';
part 'ingredients_state.dart';

@injectable
class IngredientsBloc extends Bloc<IngredientsEvent, IngredientsState> {
  final GetIngredientsUseCase _getIngredientsUseCase;

  IngredientsBloc({
    required GetIngredientsUseCase getIngredientsUseCase,
  })  : _getIngredientsUseCase = getIngredientsUseCase,
        super(IngredientsStateInitial()) {
    on<GetIngredientsEvent>(
      _onGetIngredients,
    );
  }

  Future<void> _onGetIngredients(
      GetIngredientsEvent event, Emitter<IngredientsState> emit) async {
    emit(IngredientsLoadingState());
    try {
      final response = await _getIngredientsUseCase.execute();
      emit(IngredientsSuccessState(ingredients: response));
    } catch (e) {
      emit(IngredientsErrorState(failure: ''));
    }
  }
}
