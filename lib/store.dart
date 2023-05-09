import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/app_images.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/article_title.dart';

class MyStorePage extends StatefulWidget {
  const MyStorePage({Key? key}) : super(key: key);

  @override
  State<MyStorePage> createState() => _MyStorePageState();
}

class _MyStorePageState extends State<MyStorePage> {
  List<Widget> productItems = [
    CustomOutlinedButton(
      image: Images.productImage1,
      productTitle: ProductTitle.product1,
    ),
    CustomOutlinedButton(
      image: Images.productImage2,
      productTitle: ProductTitle.product2,
    ),
    CustomOutlinedButton(
      image: Images.productImage3,
      productTitle: ProductTitle.product3,
    ),
    CustomOutlinedButton(
      image: Images.productImage4,
      productTitle: ProductTitle.product4,
    ),
    CustomOutlinedButton(
      image: Images.productImage5,
      productTitle: ProductTitle.product5,
    ),
    CustomOutlinedButton(
      image: Images.productImage6,
      productTitle: ProductTitle.product6,
    ),
    CustomOutlinedButton(
      image: Images.productImage7,
      productTitle: ProductTitle.product7,
    ),
  ];

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(
                    productItems.length, (index) => productItems[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String image;
  final String productTitle;

  const CustomOutlinedButton({
    super.key,
    required this.image,
    required this.productTitle,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Column(
        children: [
          Expanded(flex: 4, child: Image.asset(image, height: 250, width: 100)),
          Expanded(
            flex: 1,
            child: Text(
              productTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          )
        ],
      ),
      onPressed: () {},
    );
  }
}
