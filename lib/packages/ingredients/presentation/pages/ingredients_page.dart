import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recipes/config/dependencies.dart';
import 'package:my_recipes/core/design/widgets/app_bar.dart';
import 'package:my_recipes/core/design/widgets/chips_choice.dart';
import 'package:my_recipes/core/routes/app_routes_path.dart';
import 'package:my_recipes/packages/ingredients/presentation/bloc/ingredients_bloc.dart';

class IngredientsPage extends StatefulWidget {
  const IngredientsPage({super.key});

  @override
  State<IngredientsPage> createState() => _IngredientsViewState();
}

class _IngredientsViewState extends State<IngredientsPage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final bloc = context.read<IngredientsBloc>();

    return BlocProvider<IngredientsBloc>(
      create: (context) => getIt<IngredientsBloc>()..add(GetIngredientsEvent()),
      child: Scaffold(
        appBar: MyRecipesAppBar(
          title: 'Ingredients',
          automaticallyImplyLeading: false,
          leading: null,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<IngredientsBloc, IngredientsState>(
              builder: (context, state) {
                switch (state.runtimeType) {
                  case const (IngredientsLoadingState):
                    return CircularProgressIndicator();
                  case const (IngredientsSuccessState):
                    return Column(
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
                    );
                  case const (IngredientsErrorState):
                    return Center(
                      child: Text('Error'),
                    );
                  default:
                    return Text('data');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
