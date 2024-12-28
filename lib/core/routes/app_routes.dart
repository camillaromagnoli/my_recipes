import 'package:go_router/go_router.dart';
import 'package:my_recipes/core/routes/app_routes_path.dart';
import 'package:my_recipes/ui/core/root.dart';
import 'package:my_recipes/ui/home/home.dart';
import 'package:my_recipes/ui/ingredients/ingredients_view.dart';

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
      ],
    )
  ],
);
