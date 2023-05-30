import 'package:flutter/material.dart';
import '../widgets/Button.dart';
import '../widgets/MyAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.title, super.key});

  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: MyAppBar(title: title),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(),
              ],
            )
          )
        ],
      ),
    );
  }
}

