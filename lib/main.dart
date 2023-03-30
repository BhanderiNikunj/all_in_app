import 'package:all_in_app/Screen/Bottom/Provider/BottomScreenProvider.dart';
import 'package:all_in_app/Screen/Bottom/View/BottomScreen.dart';
import 'package:all_in_app/Screen/Entertainment/Provider/EntertainmentScreenProvider.dart';
import 'package:all_in_app/Screen/Entertainment/View/EntertainmentScreen.dart';
import 'package:all_in_app/Screen/Entertainment/View/EntertainmentScreenWeb.dart';
import 'package:all_in_app/Screen/Flash/View/FlashScreen.dart';
import 'package:all_in_app/Screen/Food/Provider/FoodScreenProvider.dart';
import 'package:all_in_app/Screen/Food/View/FoodScreen.dart';
import 'package:all_in_app/Screen/Food/View/FoodScreenWeb.dart';
import 'package:all_in_app/Screen/Learing/Provider/LearningScreenProvider.dart';
import 'package:all_in_app/Screen/Learing/View/LearningScreen.dart';
import 'package:all_in_app/Screen/Learing/View/LearningScreenWeb.dart';
import 'package:all_in_app/Screen/Shopping/Provider/ShoppingScreenProvider.dart';
import 'package:all_in_app/Screen/Shopping/View/ShoppingScreen.dart';
import 'package:all_in_app/Screen/Shopping/View/ShoppingScreenWeb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LearningScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => EntertainmentScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FoodScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShoppingScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const FlashScreen(),
          'bottom': (context) => const BottomScreen(),
          'learn': (context) => const LearningScreen(),
          'learn web': (context) => const LearningScreenWeb(),
          'entertainment': (context) => const EntertainmentScreen(),
          'entertainment web': (context) => const EntertainmentScreenWeb(),
          'food': (context) => const FoodScreen(),
          'food web': (context) => const FoodScreenWeb(),
          'shopping': (context) => const ShoppingScreen(),
          'shopping web': (context) => const ShoppingScreenWeb(),
        },
      ),
    ),
  );
}
