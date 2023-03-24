import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeWebScreen extends StatefulWidget {
  const HomeWebScreen({Key? key}) : super(key: key);

  @override
  State<HomeWebScreen> createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends State<HomeWebScreen> {
  HomeScreenProvider? homeScreenProvidertrue, homeScreenProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: WebViewWidget(
          controller: homeScreenProviderfalse!.webViewController!,
        ),
      ),
    );
  }
}
