import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/ContactPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma petite planète exercice',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(49, 87, 44, 1))
      ),
      routes: {
        '/': (context) => HomePage(title : 'Home'),
        '/contact': (context) => ContactPage(title : 'Contact'),
      },
      initialRoute: '/'
    );
  }
}


