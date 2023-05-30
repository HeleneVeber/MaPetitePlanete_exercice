import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar ({required this.title, super.key});
  
  final title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displaySmall!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: theme.colorScheme.primary),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: theme.colorScheme.onPrimary),
            tooltip: 'back navigation',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: Text(title, style:style, textAlign: TextAlign.center)
          ),
        ],
      ),
    );
  }
}