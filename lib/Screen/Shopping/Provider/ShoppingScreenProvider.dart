import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShoppingScreenProvider extends ChangeNotifier{

  WebViewController? webViewController4;

  List Link4 = [
    "https://www.amazon.in/",
    "https://www.flipkart.com/",
    "https://www.jiomart.com/",
    "https://www.meesho.com/",
  ];
  List Name4 = [
    "Amazon",
    "Flipkart",
    "Jio Mart",
    "Meesho",
  ];
  List Images4 = [
    "Assets/Images/amazon.png",
    "Assets/Images/flipkart.png",
    "Assets/Images/jiomart.jpg",
    "Assets/Images/meesho.png",
  ];



  void loadurl4(int index) {
    webViewController4 = WebViewController();
    webViewController4!.loadRequest(
      Uri.parse(
        "${Link4[index]}",
      ),
    );
  }




}