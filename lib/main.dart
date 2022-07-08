import 'package:flutter/material.dart';
import 'package:recipe_app/screen/home_screen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.purple,
          secondary: Colors.black,
        ),
      ),
      home: const HomePage(
        title: 'Recipe Calculator',
      ),
    );
  }
}
