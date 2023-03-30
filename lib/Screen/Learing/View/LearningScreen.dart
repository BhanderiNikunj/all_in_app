import 'package:all_in_app/Screen/Learing/Provider/LearningScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
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
          leading: const Icon(Icons.menu),
          elevation: 0,
          title: Image.asset(
            "Assets/Images/1.png",
            height: 100,
            width: double.infinity,
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: learningScreenProviderFalse!.Link1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'learn web');
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "${learningScreenProviderFalse!.Images1[index]}",
                        height: 100,
                        width: double.infinity,
                      ),
                      Text(
                        "${learningScreenProviderFalse!.Name1[index]}",
                        style: GoogleFonts.philosopher(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
