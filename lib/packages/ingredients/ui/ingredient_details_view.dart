import 'package:flutter/material.dart';
import 'package:my_recipes/core/design/widgets/app_bar.dart';

class IngredientDetailsView extends StatelessWidget {
  const IngredientDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyRecipesAppBar(
        title: 'Tomato',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date: bla bla'),
                      Text('Expiration Date: bla bla'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('3 UN'),
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
