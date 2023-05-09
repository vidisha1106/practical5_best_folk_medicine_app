import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/app_images.dart';

class MyStorePage extends StatefulWidget {
  const MyStorePage({Key? key}) : super(key: key);

  @override
  State<MyStorePage> createState() => _MyStorePageState();
}

class _MyStorePageState extends State<MyStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Shop"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 35),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 25, bottom: 5, right: 25, left: 25),
            child: Container(
              height: 75,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0xffe4e4e4),
                    blurRadius: 25,
                    spreadRadius: -0,
                    offset: Offset(0.1, 0.1))
              ]),
              child: TextField(
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                keyboardType: TextInputType.text,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                textInputAction: TextInputAction.done,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration(
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          OutlinedButton(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0,bottom: 10),
              child: Column(
                children: [
                  Image.asset(Images.productImage1, height: 250),
                  Text(
                    "Organic Black Cumin Oil",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18,color: Colors.black54),
                  )
                ],
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
