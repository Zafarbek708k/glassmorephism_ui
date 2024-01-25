import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorephism_ui/pages/widgets/blurred_main_container.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../common/custom_scaffold.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  static const String id = "/home_page";

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearchVisible = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return  CustomScaffold(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,

          appBar: AppBar(
            title: isSearchVisible  ?  Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10, bottom: 10),
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ): const Text("Weather", style: TextStyle(color: Colors.white, fontSize: 25),     // icon and Text
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isSearchVisible = !isSearchVisible;
                    if (!isSearchVisible) {
                      // Clear search text and perform search
                      // You can implement your search functionality here
                      searchController.clear();
                    }
                  });
                },
                icon: const Icon(Icons.search, color: Colors.white,),
              ),
            ],
          ),

          body: ListView.builder(    //BlurredMainContainer(),
            itemCount: 10,
              itemBuilder: (_, index){
                return const BlurredMainContainer();
              }
          )
        ),
      ),
    );
  }
}

