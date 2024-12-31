import 'package:go_router/go_router.dart';
import 'package:my_recipes/core/routes/app_routes_path.dart';
import 'package:my_recipes/packages/home/core/root.dart';
import 'package:my_recipes/packages/home/home.dart';
import 'package:my_recipes/packages/ingredients/ui/ingredient_details_view.dart';
import 'package:my_recipes/packages/ingredients/ui/ingredients_view.dart';
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
          builder: (context, state) => IngredientsView(),
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
