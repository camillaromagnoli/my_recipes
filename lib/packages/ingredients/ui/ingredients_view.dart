import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recipes/core/design/widgets/app_bar.dart';
import 'package:my_recipes/core/design/widgets/chips_choice.dart';
import 'package:my_recipes/core/routes/app_routes_path.dart';

class IngredientsView extends StatefulWidget {
  const IngredientsView({super.key});

  @override
  State<IngredientsView> createState() => _IngredientsViewState();
}

class _IngredientsViewState extends State<IngredientsView> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: MyRecipesAppBar(
        title: 'Ingredients',
        automaticallyImplyLeading: false,
        leading: null,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  MyRecipesChipsChoice(
                    label: 'Filters',
                    selected: isSelected,
                    leading: Icon(Icons.filter_list),
                    onSelected: (selected) {
                      setState(() {
                        isSelected = selected;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  context.push(
                    AppRoutePaths.ingredientDetails,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.apple,
                    ),
                    trailing: Text(
                      '400g',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text('Chopped tomatoes'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
