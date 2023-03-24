import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreenProvider extends ChangeNotifier{
  WebViewController? webViewController;

  List Link1 = [
    Uri.parse("https://www.netflix.com/in/"),
    Uri.parse("https://www.hotstar.com/in"),
    Uri.parse("https://www.primevideo.com/"),
    Uri.parse("https://www.zee5.com/"),

    Uri.parse("https://www.meesho.com/"),
    Uri.parse("https://www.flipkart.com/"),
    Uri.parse("https://www.amazon.in/"),
    Uri.parse("https://www.jiomart.com/"),
  ];
  List Link2 = [
    Uri.parse("https://www.zomato.com/"),
    Uri.parse("https://www.swiggy.com/"),
    Uri.parse("https://www.mcdonalds.com/us/en-us.html"),
    Uri.parse("https://www.burgerking.in/"),
  ];
  List Link3 = [
    Uri.parse("https://www.meesho.com/"),
    Uri.parse("https://www.flipkart.com/"),
    Uri.parse("https://www.amazon.in/"),
    Uri.parse("https://www.jiomart.com/"),
  ];



  List Name1 = [
    "netflix",
    "hotstar",
    "amazon prime video",
    "ZEE5",
  ];
  List Name2 = [
    "Zomato",
    "Swiggy",
    "McDonald",
    "Burger King",
  ];
  List Name3 = [
    "Meesho",
    "FlipKart",
    "Amazon",
    "Jio Mart",
  ];



  List Images1 = [
    "Assets/Images/netflix.jpg",
    "Assets/Images/Disney+Hotstar.png",
    "Assets/Images/primevideo.png",
    "Assets/Images/zee5.jpg",
  ];
  List Images2 = [
    "Assets/Images/Zomato.png",
    "Assets/Images/swiggy.jpg",
    "Assets/Images/McDonald.jpg",
    "Assets/Images/Burger King.jpg",
  ];
  List Images3 = [
    "Assets/Images/meesho.png",
    "Assets/Images/flipkart.png",
    "Assets/Images/amazon.png",
    "Assets/Images/jiomart.jpg",
  ];


  void loadurl1(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${Link1[index]}",
      ),
    );
  }
  void loadurl2(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${Link2[index]}",
      ),
    );
  }
  void loadurl3(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${Link3[index]}",
      ),
    );
  }
}