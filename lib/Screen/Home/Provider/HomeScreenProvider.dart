import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreenProvider extends ChangeNotifier{
  WebViewController? webViewController;

  List Link = [
    Uri.parse("https://www.netflix.com/in/"),
    Uri.parse("https://www.hotstar.com/in"),
    Uri.parse("https://www.primevideo.com/"),
    Uri.parse("https://www.zee5.com/"),
    Uri.parse("https://www.zomato.com/"),
    Uri.parse("https://www.meesho.com/"),
    Uri.parse("https://www.flipkart.com/"),
    Uri.parse("https://www.amazon.in/"),
    Uri.parse("https://www.jiomart.com/"),
  ];
  List Name = [
    "netflix",
    "hotstar",
    "amazon prime video",
    "ZEE5",
    "Zomato",
    "Meesho",
    "FlipKart",
    "Amazon",
    "Jio Mart",
  ];
  List Images = [
    "Assets/Images/netflix.jpg",
    "Assets/Images/Disney+Hotstar.png",
    "Assets/Images/primevideo.png",
    "Assets/Images/zee5.jpg",
    "Assets/Images/Zomato.png",
    "Assets/Images/meesho.png",
    "Assets/Images/flipkart.png",
    "Assets/Images/amazon.png",
    "Assets/Images/jiomart.jpg",
  ];


  void loadurl(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${Link[index]}",
      ),
    );
  }
}