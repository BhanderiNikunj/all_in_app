import 'package:all_in_app/Screen/Food/Provider/FoodScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FoodScreenWeb extends StatefulWidget {
  const FoodScreenWeb({Key? key}) : super(key: key);

  @override
  State<FoodScreenWeb> createState() => _FoodScreenWebState();
}

class _FoodScreenWebState extends State<FoodScreenWeb> {

  FoodScreenProvider? foodScreenProviderTrue;
  FoodScreenProvider? foodScreenProviderFalse;

  @override
  Widget build(BuildContext context) {
    foodScreenProviderFalse =
        Provider.of<FoodScreenProvider>(context, listen: false);
    foodScreenProviderTrue =
        Provider.of<FoodScreenProvider>(context, listen: true);


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: WebViewWidget(controller: foodScreenProviderFalse!.webViewController3!,),
      ),
    );
  }
}
