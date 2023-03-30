import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LearningScreenProvider extends ChangeNotifier{

  WebViewController? webViewController1;

  List Link1 = [
    Uri.parse("https://www.wikipedia.org/"),
    Uri.parse("https://www.w3schools.com/"),
    Uri.parse("https://www.javatpoint.com/"),
    Uri.parse("https://www.tutorialspoint.com/index.htm"),
  ];
  List Name1 = [
    "Wikipedia",
    "W3School",
    "Javatpoint",
    "tutorialspoint",
  ];
  List Images1 = [
    "Assets/Images/wikipedia.png",
    "Assets/Images/W3School.png",
    "Assets/Images/javatpoint.png",
    "Assets/Images/tutorialspoint.png",
  ];


  void loadurl1(int index) {
    webViewController1 = WebViewController();
    webViewController1!.loadRequest(
      Uri.parse(
        "${Link1[index]}",
      ),
    );
  }
}