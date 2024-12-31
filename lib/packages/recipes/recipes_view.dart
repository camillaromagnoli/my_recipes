import 'package:flutter/material.dart';
import 'package:my_recipes/core/design/widgets/button_icon.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: MyRecipesButtonIcon(
            icon: Icons.arrow_back,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
