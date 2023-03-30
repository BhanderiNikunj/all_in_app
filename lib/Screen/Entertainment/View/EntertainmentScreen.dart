import 'package:all_in_app/Screen/Entertainment/Provider/EntertainmentScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EntertainmentScreen extends StatefulWidget {
  const EntertainmentScreen({Key? key}) : super(key: key);

  @override
  State<EntertainmentScreen> createState() => _EntertainmentScreenState();
}

class _EntertainmentScreenState extends State<EntertainmentScreen> {
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
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Good Evening",
                style: GoogleFonts.philosopher(color: Colors.white, fontSize: 40),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: entertainmentScreenProviderFalse!.Link2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        entertainmentScreenProviderFalse!.loadurl2(index);
                        Navigator.pushNamed(context, 'entertainment web');
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
                              "${entertainmentScreenProviderFalse!.Images2[index]}",
                              height: 100,
                              width: double.infinity,
                            ),
                            Text(
                              "${entertainmentScreenProviderFalse!.Name2[index]}",
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
