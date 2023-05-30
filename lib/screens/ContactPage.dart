import 'package:flutter/material.dart';
import '../widgets/MyAppBar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage ({required this.title, super.key});

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: MyAppBar(title: title),
          ),
        ],
      ),
    );
  }
}