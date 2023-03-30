import 'package:all_in_app/Screen/Bottom/Provider/BottomScreenProvider.dart';
import 'package:all_in_app/Screen/Bottom/View/BottomScreen.dart';
import 'package:all_in_app/Screen/Flash/View/FlashScreen.dart';
import 'package:all_in_app/Screen/Food/View/FoodScreen.dart';
import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:all_in_app/Screen/Learing/Provider/LearningScreenProvider.dart';
import 'package:all_in_app/Screen/Learing/View/LearningScreen.dart';
import 'package:all_in_app/Screen/Learing/View/LearningScreenWeb.dart';
import 'package:all_in_app/Screen/Shopping/View/ShoppingScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LearningScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const FlashScreen(),
          'bottom':(context) => const BottomScreen(),
          'learn':(context) => const LearningScreen(),
          'learn web':(context) => const LearningScreenWeb(),
          'food':(context) => const FoodScreen(),
          'shopping':(context) => const ShoppingScreen(),
        },
      ),
    ),
  );
}
