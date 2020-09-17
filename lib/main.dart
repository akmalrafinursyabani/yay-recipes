import 'package:flutter/material.dart';
import 'package:yay_recipes/screens/screens.dart';
import 'shared/shared.dart' as shared;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yay Recipes!',
      theme: ThemeData(
        primaryColor: Colors.green[600],
      ),
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}
