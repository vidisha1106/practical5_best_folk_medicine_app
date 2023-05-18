import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/main.dart';

class DecrementScreen extends StatefulWidget with RouteAware {
  const DecrementScreen({Key? key}) : super(key: key);

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen>{

  String textCounter="0";
  int counter=0;



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
              Text(textCounter,
                  style: TextStyle(color: Colors.black, fontSize: 25)),
            ],
          ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
          FloatingActionButton(
            onPressed: () {
              decrement();
              setState(() {
                textCounter=counter.toString();
              });
            },
            child: Text("-", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
