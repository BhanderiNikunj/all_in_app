import 'package:all_in_app/Screen/Shopping/Provider/ShoppingScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShoppingScreenWeb extends StatefulWidget {
  const ShoppingScreenWeb({Key? key}) : super(key: key);

  @override
  State<ShoppingScreenWeb> createState() => _ShoppingScreenWebState();
}

class _ShoppingScreenWebState extends State<ShoppingScreenWeb> {

  ShoppingScreenProvider? shoppingScreenProviderTrue;
  ShoppingScreenProvider? shoppingScreenProviderFalse;

  @override
  Widget build(BuildContext context) {
    shoppingScreenProviderFalse = Provider.of<ShoppingScreenProvider>(context,listen: false);
    shoppingScreenProviderTrue = Provider.of<ShoppingScreenProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: WebViewWidget(controller: shoppingScreenProviderFalse!.webViewController4!,),
      ),
    );
  }
}
