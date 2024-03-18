import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/model/place_model.dart';
import 'package:travel_app/screens/detailscreen/detail_screen.dart';

import '../../utilities/colors.dart';
import 'widgets/category_dart.dart';
import 'widgets/recommended_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage:
                          AssetImage("lib/assets/images/woman.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: const TextSpan(
                            text: "Hello,",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [
                          TextSpan(
                              text: "Zeynep",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ]))
                  ],
                ),

                //Search section
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Explore new destinations",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Search your destination",
                                prefixIcon: Icon(Icons.search),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 22,
                            backgroundColor: kPrimaryClr,
                            child: Icon(
                              Icons.sort_by_alpha_sharp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //Category
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {},
                            image: "lib/assets/images/mountains.jpeg",
                            title: "Mountains",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "lib/assets/images/forests.jpeg",
                            title: "Forests",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "lib/assets/images/sea.webp",
                            title: "Sea",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "lib/assets/images/deserts.jpeg",
                            title: "Deserts",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Recommended
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 15),
                          child: Row(
                            children: [
                              RecommendCart(
                                placeInfo: places[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                                placeInfo: places[index],
                                              )));
                                },
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
