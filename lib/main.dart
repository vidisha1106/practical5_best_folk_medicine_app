import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/app_images.dart';
import 'package:practical5_best_folk_medicine_app/favourite.dart';
import 'package:practical5_best_folk_medicine_app/home.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/decrement.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/increment.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/navigator_observer.dart';
import 'package:practical5_best_folk_medicine_app/settings.dart';
import 'package:practical5_best_folk_medicine_app/store.dart';

import 'drinks_details.dart';

void main() {
  runApp( const MyApp());
}

GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      navigatorObservers: [
        routeObserver
      ],
      routes: {
        '/ArticleDetails' : (context) => MyDrinksDetails(),
        '/DecrementScreen' : (context) => DecrementScreen(),
        '/MainPage' : (context) => MyHomePage()
      },
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
    const MyAppHomePage(),
    const MyStorePage(),
    const MyFavouritePage(),
    const MySettingsPage(),
    IncrementScreen(),
  ];

  int cIndex=0;

  List<String> bottomNavigationBarItem=["Home","Store","Favourite","Settings","+/-"];

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
          unselectedIconTheme: const IconThemeData(
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
          const BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store_sharp),
              label: "Store",
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favourite"
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
          const BottomNavigationBarItem(
              icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,children: [
                Icon(Icons.add),
                Icon(Icons.remove)
              ]),
              label: "Inc/Dec"
          ),
        ]
        )
      );
  }
}
