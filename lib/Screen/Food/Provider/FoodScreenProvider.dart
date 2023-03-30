import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FoodScreenProvider extends ChangeNotifier{
  WebViewController? webViewController3;
  List Link3 = [
    "https://www.zomato.com/",
    "https://www.mcdonalds.com/us/en-us.html",
    "https://www.burgerking.in/",
    "https://www.swiggy.com/city/surat",
  ];
  List Name3 = [
    "Zomato",
    "McDonald",
    "Burger King",
    "swiggy",
  ];
  List Images3 = [
    "Assets/Images/Zomato.png",
    "Assets/Images/McDonald.jpg",
    "Assets/Images/Burger King.jpg",
    "Assets/Images/swiggy.jpg",
  ];



  void loadurl3(int index) {
    webViewController3 = WebViewController();
    webViewController3!.loadRequest(
      Uri.parse(
        "${Link3[index]}",
      ),
    );
  }


}