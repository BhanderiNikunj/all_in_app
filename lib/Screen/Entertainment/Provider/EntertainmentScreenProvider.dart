import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EntertainmentScreenProvider extends ChangeNotifier{

  WebViewController? webViewController2;

  List Link2 = [
    Uri.parse("https://www.netflix.com/in/"),
    Uri.parse("https://www.hotstar.com/in"),
    Uri.parse("https://www.primevideo.com/"),
    Uri.parse("https://www.zee5.com/"),
    Uri.parse("https://www.mxplayer.in/"),
    Uri.parse("https://www.jiocinema.com/"),
  ];
  List Name2 = [
    "netflix",
    "hotstar",
    "amazon prime video",
    "ZEE5",
    "MX Player",
    "Jio Cinema",
  ];
  List Images2 = [
    "Assets/Images/netflix.jpg",
    "Assets/Images/Disney+Hotstar.png",
    "Assets/Images/primevideo.png",
    "Assets/Images/zee5.jpg",
    "Assets/Images/mx_player.jpg",
    "Assets/Images/jio.jpg",
  ];


  void loadurl2(int index) {
    webViewController2 = WebViewController();
    webViewController2!.loadRequest(
      Uri.parse(
        "${Link2[index]}",
      ),
    );
  }
}