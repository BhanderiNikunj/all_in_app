import 'package:all_in_app/Screen/First/View/FirstScreen.dart';
import 'package:all_in_app/Screen/Flash/View/FlashScreen.dart';
import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:all_in_app/Screen/Home/View/HomeScreen.dart';
import 'package:all_in_app/Screen/Home/View/HomeWebScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const FlashScreen(),
          'first': (context) => const FirstScreen(),
          'home': (context) => const HomeScreen(),
          'web': (context) => const HomeWebScreen(),
        },
      ),
    ),
  );
}
