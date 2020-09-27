import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yay_recipes/bloc/blocs.dart';
import 'package:yay_recipes/screens/screens.dart';
import 'shared/shared.dart' as shared;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(
            create: (_) => FoodRecipesBloc()..add(FetchFoodRecipes()),
          ),
        ],
        child: Wrapper(),
      ),
    );
  }
}
