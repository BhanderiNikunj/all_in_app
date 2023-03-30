import 'package:all_in_app/Screen/Entertainment/Provider/EntertainmentScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EntertainmentScreenWeb extends StatefulWidget {
  const EntertainmentScreenWeb({Key? key}) : super(key: key);

  @override
  State<EntertainmentScreenWeb> createState() => _EntertainmentScreenWebState();
}

class _EntertainmentScreenWebState extends State<EntertainmentScreenWeb> {
  EntertainmentScreenProvider? entertainmentScreenProviderTrue;
  EntertainmentScreenProvider? entertainmentScreenProviderFalse;



  @override
  Widget build(BuildContext context) {
    entertainmentScreenProviderFalse =
        Provider.of<EntertainmentScreenProvider>(context, listen: false);
    entertainmentScreenProviderTrue =
        Provider.of<EntertainmentScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: WebViewWidget(
          controller: entertainmentScreenProviderFalse!.webViewController2!,
        ),
      ),
    );
  }
}
