import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/custom_transition.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/decrement.dart';

class IncrementScreen extends StatefulWidget with RouteAware {
  const IncrementScreen({Key? key}) : super(key: key);

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

int counter = 0;

class _IncrementScreenState extends State<IncrementScreen> {
  // String textCounter = counter.toString();

  ///Method for incrementing Counter
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

            ///Counter Label
            Text("Counter",
                style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(
              height: 5,
            ),


            ///Counter Text
            Text(counter.toString(),
                style: TextStyle(color: Colors.black, fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          ///Increment Button
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              setState(() {
                increment();
              });
            },
            child: Text("+",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
          SizedBox(width: 5),

          ///Decrement Button
          FloatingActionButton(
            heroTag: null,
            onPressed: () async {
              await Navigator.of(context)
                  .push(CustomTransition(child: DecrementScreen()));
              setState(() {});
            },
            child: Text("-",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
