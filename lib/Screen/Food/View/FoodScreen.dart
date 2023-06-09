import 'package:all_in_app/Screen/Food/Provider/FoodScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Good Evening",
                style:
                    GoogleFonts.philosopher(color: Colors.white, fontSize: 40),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: foodScreenProviderFalse!.Link3.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        foodScreenProviderFalse!.loadurl3(index);
                        Navigator.pushNamed(context, 'food web');
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
                              "${foodScreenProviderFalse!.Images3[index]}",
                              height: 100,
                              width: double.infinity,
                            ),
                            Text(
                              "${foodScreenProviderFalse!.Name3[index]}",
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
          ],
        ),
      ),
    );
  }
}
