import 'package:flutter/material.dart';

class IngredientsView extends StatefulWidget {
  const IngredientsView({super.key});

  @override
  State<IngredientsView> createState() => _IngredientsViewState();
}

class _IngredientsViewState extends State<IngredientsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          'Ingredients',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.apple,
              ),
              trailing: Text(
                '400g',
                style: TextStyle(fontSize: 16),
              ),
              title: Text('Chopped tomatoes'),
              subtitle: Text('Expiring date: 01/01/2025'),
            ),
          ],
        ),
      ),
    );
  }
}
