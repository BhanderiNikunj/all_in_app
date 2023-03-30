import 'package:all_in_app/Screen/Learing/Provider/LearningScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LearningScreenWeb extends StatefulWidget {
  const LearningScreenWeb({Key? key}) : super(key: key);

  @override
  State<LearningScreenWeb> createState() => _LearningScreenWebState();
}

class _LearningScreenWebState extends State<LearningScreenWeb> {
  LearningScreenProvider? learningScreenProviderTrue;
  LearningScreenProvider? learningScreenProviderFalse;

  @override
  Widget build(BuildContext context) {
    learningScreenProviderFalse =
        Provider.of<LearningScreenProvider>(context, listen: false);
    learningScreenProviderTrue =
        Provider.of<LearningScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: WebViewWidget(
          controller: learningScreenProviderFalse!.webViewController!,
          layoutDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
