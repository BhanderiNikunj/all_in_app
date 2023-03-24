import 'package:all_in_app/Screen/First/Model/ModelClass.dart';
import 'package:all_in_app/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  HomeScreenProvider? homeScreenProvidertrue, homeScreenProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Video App",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Model m1 = Model(
                        Name: homeScreenProvidertrue!.Name1,
                        Images: homeScreenProvidertrue!.Images1,
                        Url: homeScreenProvidertrue!.Link1,
                      );

                      Navigator.pushNamed(context, 'home', arguments: m1);
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                itemCount: homeScreenProviderfalse!.Images1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        homeScreenProviderfalse!.loadurl1(index);
                        Navigator.pushNamed(context, 'web');
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "${homeScreenProviderfalse!.Images1[index]}",
                              height: 125,
                              width: 125,
                            ),
                            Text(
                              "${homeScreenProviderfalse!.Name1[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Food App",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Model m1 = Model(
                        Name: homeScreenProvidertrue!.Name2,
                        Images: homeScreenProvidertrue!.Images2,
                        Url: homeScreenProvidertrue!.Link2,
                      );

                      Navigator.pushNamed(context, 'home', arguments: m1);
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                itemCount: homeScreenProviderfalse!.Images2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        homeScreenProviderfalse!.loadurl2(index);
                        Navigator.pushNamed(context, 'web');
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "${homeScreenProviderfalse!.Images2[index]}",
                              height: 125,
                              width: 125,
                            ),
                            Text(
                              "${homeScreenProviderfalse!.Name2[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shopping App",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Model m1 = Model(
                        Name: homeScreenProvidertrue!.Name3,
                        Images: homeScreenProvidertrue!.Images3,
                        Url: homeScreenProvidertrue!.Link3,
                      );

                      Navigator.pushNamed(context, 'home', arguments: m1);
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                itemCount: homeScreenProviderfalse!.Images3.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        homeScreenProviderfalse!.loadurl3(index);
                        Navigator.pushNamed(context, 'web');
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "${homeScreenProviderfalse!.Images3[index]}",
                              height: 125,
                              width: 125,
                            ),
                            Text(
                              "${homeScreenProviderfalse!.Name3[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
        backgroundColor: Colors.black,
      ),
    );
  }
}
