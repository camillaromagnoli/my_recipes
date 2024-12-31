import 'package:flutter/material.dart';

class MyRecipesChipsChoice extends StatefulWidget {
  const MyRecipesChipsChoice({
    required this.label,
    required this.onSelected,
    required this.selected,
    this.leading,
    super.key,
  });

  final String label;
  final bool selected;
  final Function(bool) onSelected;
  final Widget? leading;

  @override
  State<MyRecipesChipsChoice> createState() => _MyRecipesChipsChoiceState();
}

class _MyRecipesChipsChoiceState extends State<MyRecipesChipsChoice> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    BoxDecoration boxDecoration() {
      return widget.selected
          ? BoxDecoration(
              color: colors.inverseSurface,
              borderRadius: BorderRadius.circular(8),
            )
          : BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: colors.tertiary,
              ),
            );
    }

    TextStyle textStyle() {
      return widget.selected
          ? TextStyle(
              fontWeight: FontWeight.w500,
              color: colors.onInverseSurface,
            )
          : TextStyle(
              fontWeight: FontWeight.w500,
              color: colors.onTertiary,
            );
    }

    return GestureDetector(
      onTap: () => widget.onSelected(!widget.selected),
      child: Container(
        height: 32,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: boxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            if (widget.leading != null) widget.leading!,
            Text(
              widget.label,
              style: textStyle(),
            )
          ],
        ),
      ),
    );
  }
}
