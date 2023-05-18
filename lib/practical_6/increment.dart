import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/custom_transition.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/decrement.dart';

class IncrementScreen extends StatefulWidget with RouteAware{

  const IncrementScreen({Key? key}) : super(key: key);

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

int counter = 0;

class _IncrementScreenState extends State<IncrementScreen> {

  String textCounter = "0";

  void increment() {
    setState(() {
    counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment",
            style: TextStyle(fontSize: 25, color: Colors.black)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter",
                style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(height: 5,),
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
              setState(() {
                increment();
                textCounter = counter.toString();
              });
            },
            child: Text("+", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
          SizedBox(width: 5),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.of(context).push(CustomTransition(child: DecrementScreen()));
            },
            child: Text("-", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}

