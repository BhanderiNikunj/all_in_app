import 'package:all_in_app/Screen/First/Model/ModelClass.dart';
import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenProvider? homeScreenProvidertrue, homeScreenProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);
    Model M1 = ModalRoute.of(context)!.settings.arguments as Model;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: M1.Url!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  homeScreenProviderfalse!.loadurl1(index);
                  homeScreenProviderfalse!.loadurl2(index);
                  homeScreenProviderfalse!.loadurl3(index);
                  Navigator.pushNamed(context, 'web');
                },
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "${M1.Images![index]}",
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "${M1.Name![index]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
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
