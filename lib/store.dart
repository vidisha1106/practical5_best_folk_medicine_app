import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/app_images.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/article_title.dart';
import 'package:practical5_best_folk_medicine_app/model/productModel.dart';

class MyStorePage extends StatefulWidget {
  const MyStorePage({Key? key}) : super(key: key);

  @override
  State<MyStorePage> createState() => _MyStorePageState();
}

class _MyStorePageState extends State<MyStorePage> {

  List<ProductModel> products = [
    const ProductModel(
      image: Images.productImage1,
      productTitle: ProductTitle.product1,
    ),
    const ProductModel(
      image: Images.productImage2,
      productTitle: ProductTitle.product2,
    ),
    const ProductModel(
      image: Images.productImage3,
      productTitle: ProductTitle.product3,
    ),
    const ProductModel(
      image: Images.productImage4,
      productTitle: ProductTitle.product4,
    ),
  ];

  List filteredProducts = [];

  @override
  void initState() {
    filteredProducts = products;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Shop"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: const TextStyle(
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
                onChanged: (value){
                  setState(() {
                    filteredProducts = [];
                  });
                  products.forEach((product){
                    if(product.productTitle.toLowerCase().contains(value.toLowerCase())){
                      setState(() {
                        filteredProducts.add(product);
                      });
                    }
                  });
                },
                textInputAction: TextInputAction.done,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration(
                  //isDense: true,
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
                crossAxisCount: 2,
                childAspectRatio: 150 / 250,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(
                  filteredProducts.length,
                  (index) => CustomOutlinedButton(image: filteredProducts[index].image,productTitle: filteredProducts[index].productTitle,),
                ),
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(flex: 4, child: Image.asset(image)),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: Text(
                productTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black54),
              ),
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
