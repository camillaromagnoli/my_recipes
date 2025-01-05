import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recipes/config/dependencies.dart';
import 'package:my_recipes/core/routes/app_routes_path.dart';
import 'package:my_recipes/packages/home/core/root.dart';
import 'package:my_recipes/packages/home/home.dart';
import 'package:my_recipes/packages/ingredients/presentation/bloc/ingredients_bloc.dart';
import 'package:my_recipes/packages/ingredients/presentation/pages/ingredient_details_view.dart';
import 'package:my_recipes/packages/ingredients/presentation/pages/ingredients_page.dart';
import 'package:my_recipes/packages/recipes/recipes_view.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoutePaths.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) => RootView(child: child),
      routes: [
        GoRoute(
          path: AppRoutePaths.home,
          builder: (context, state) => HomeView(),
        ),
        GoRoute(
          path: AppRoutePaths.ingredients,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => getIt<IngredientsBloc>(),
              child: IngredientsPage(),
            );
          },
        ),
        GoRoute(
          path: AppRoutePaths.ingredientDetails,
          builder: (context, state) => IngredientDetailsView(),
        ),
        GoRoute(
          path: AppRoutePaths.recipes,
          builder: (context, state) => RecipesView(),
        ),
      ],
    )
  ],
);
