import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/main.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/increment.dart';

class DecrementScreen extends StatefulWidget with RouteAware {
  const DecrementScreen({Key? key}) : super(key: key);

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> with RouteAware{

  // String textCounter=counter.toString();

  ///Decrement counter
  void decrement()
  {
    setState(() {
      counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Decrement",
              style: TextStyle(fontSize: 25, color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          leadingWidth: 75,
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(height: 5),
              Text(counter.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 25)),
            ],
          ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          ///Home Button
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
                // Navigator(pages: [MaterialPage(child: MyHomePage())],);
              navigatorKey.currentState!.pushNamed('/MainPage');
            },
            child: Icon(Icons.home),
            elevation: 5,
          ),
          SizedBox(width: 5,),

          ///Decrement Button
          FloatingActionButton(
            onPressed: () {
              setState(() {
              decrement();
                // textCounter=counter.toString();
              });
            },
            child: Text("-", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    counter=ModalRoute.of(context)!.settings.arguments as int;
    routeObserver.subscribe(this,ModalRoute.of(context) as PageRoute);
  }

  @override
  void didPush() {
    debugPrint("on did push");
    bool isEqual= counter==ModalRoute.of(context)?.settings.arguments as int;
    debugPrint("Counter Value is Valid : $isEqual");
  }

  @override
  void didPop() {
    debugPrint("on did pop");
    bool isEqual= counter==ModalRoute.of(context)?.settings.arguments as int;
    debugPrint("Counter Value is Valid : $isEqual");
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
