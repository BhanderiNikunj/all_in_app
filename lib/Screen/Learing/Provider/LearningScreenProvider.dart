import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LearningScreenProvider extends ChangeNotifier{

  WebViewController? webViewController;

  List Link1 = [
    Uri.parse("https://www.netflix.com/in/"),
    Uri.parse("https://www.hotstar.com/in"),
    Uri.parse("https://www.primevideo.com/"),
    Uri.parse("https://www.zee5.com/"),
  ];
  List Name1 = [
    "netflix",
    "hotstar",
    "amazon prime video",
    "ZEE5",
  ];
  List Images1 = [
    "Assets/Images/netflix.jpg",
    "Assets/Images/Disney+Hotstar.png",
    "Assets/Images/primevideo.png",
    "Assets/Images/zee5.jpg",
  ];


  void loadurl1(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${Link1[index]}",
      ),
    );
  }
}