import 'package:all_in_app/Screen/Entertainment/View/EntertainmentScreen.dart';
import 'package:all_in_app/Screen/Food/View/FoodScreen.dart';
import 'package:all_in_app/Screen/Learing/View/LearningScreen.dart';
import 'package:all_in_app/Screen/Shopping/View/ShoppingScreen.dart';
import 'package:flutter/material.dart';

class BottomScreenProvider extends ChangeNotifier{
  List Screen = [
    LearningScreen(),
    EntertainmentScreen(),
    FoodScreen(),
    ShoppingScreen(),
  ];
  int i=0;

  void checkScreen(int value){
    i=value;
    notifyListeners();
  }
}