import 'package:flutter/material.dart';
import 'package:my_recipes/config/dependencies.dart';
import 'package:my_recipes/core/design/colors.dart';
import 'package:my_recipes/core/routes/app_routes.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
    );
  }
}
