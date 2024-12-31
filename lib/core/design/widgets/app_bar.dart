import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recipes/core/design/widgets/button_icon.dart';

class MyRecipesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyRecipesAppBar({
    this.title,
    this.onPressLeading,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
    super.key,
  });

  final String? title;
  final VoidCallback? onPressLeading;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return AppBar(
      title: title != null
          ? Text(
              title!,
              style: TextStyle(
                color: colors.onSurface,
              ),
            )
          : null,
      leading: automaticallyImplyLeading
          ? Padding(
              padding: const EdgeInsets.only(left: 16),
              child: MyRecipesButtonIcon(
                icon: Icons.arrow_back,
                onPressed: onPressLeading == null && automaticallyImplyLeading
                    ? () {
                        context.pop();
                      }
                    : onPressLeading,
              ),
            )
          : leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
