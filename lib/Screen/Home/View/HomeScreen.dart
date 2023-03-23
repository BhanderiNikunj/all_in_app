import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenProvider? homeScreenProvidertrue,homeScreenProviderfalse;
  @override
  Widget build(BuildContext context) {
    homeScreenProviderfalse = Provider.of<HomeScreenProvider>(context,listen: false);
    homeScreenProvidertrue = Provider.of<HomeScreenProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: homeScreenProviderfalse!.Link.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Button(index),
            ],
          ),
        ),
      ),
    );
  }
  Widget Button(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          homeScreenProviderfalse!.loadurl(index);
          Navigator.pushNamed(context, 'web',);
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
                "${homeScreenProviderfalse!.Images[index]}",
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "${homeScreenProviderfalse!.Name[index]}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
