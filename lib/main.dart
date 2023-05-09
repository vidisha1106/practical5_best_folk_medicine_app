import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/app_images.dart';
import 'package:practical5_best_folk_medicine_app/favourite.dart';
import 'package:practical5_best_folk_medicine_app/home.dart';
import 'package:practical5_best_folk_medicine_app/search.dart';
import 'package:practical5_best_folk_medicine_app/settings.dart';
import 'package:practical5_best_folk_medicine_app/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pages = [
    MyAppHomePage(),
    MyStorePage(),
    MyFavouritePage(),
    MySettingsPage(),
    MySearchPage()
  ];

  int cIndex=0;

  List<String> bottomNavigationBarItem=["Home","Store","Favourite","Settings","Search"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 25,
        onTap: (value) {
          setState(() {
          cIndex=value;
          });
        },
        type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
            size: 25,
          ),
          selectedItemColor: Colors.black,
          iconSize: 25,
          currentIndex: cIndex,
          unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(Images.home,height: 25,width: 25,color: Colors.grey),
            label: "Home",activeIcon: Image.asset(Images.home,height: 25,width: 25,color: Colors.black),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store_sharp),
              label: "Store",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favourite"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
          ),
        ]
        )
      );
  }
}
