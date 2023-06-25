import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_constants/article_title.dart';
import 'app_constants/app_images.dart';
import 'model/ArticleData.dart';

class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({Key? key}) : super(key: key);

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage>  {

  List<String> chipCategories = [
    'Drinks & Smoothies',
    'Family',
    'Fitness & Beauty',
    'Food',
    'Fruits & Veggies',
    "Grandma's Remedies",
    'Health & Fitness',
    'Healthy Food',
    'Healthy News',
    'Healthy Tips',
  ];
  Color chipColor = Colors.black;
  String? chip = 'Family';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///App Title
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            "Best Folk Medicine",
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Colby',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, right: 25, left: 25),

                ///Search TextField
                child: Container(
                  height: 50,
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
                      isDense: true
                    ),
                  ),
                ),
              ),

              ///List of Chips
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: List.generate(
                      chipCategories.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                              child: Text(chipCategories[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Helvetica',
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Main articles",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("See more",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal)),
                      ),
                    )
                  ],
                ),
              ),

              ///Articles
              SizedBox(
                height: 311,
                child: ListView.builder(
                  itemCount: listOfArticleData.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:  EdgeInsets.only(left: index == 0 ? 32 :12,right: 12,top: 8,bottom: 18),
                      child: Articles(listOfArticleData[index]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "You have not finished reading",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("See more",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal)),
                      ),
                    )
                  ],
                ),
              ),


             ///Static Articles
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   SizedBox(
                     height: 115,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Image.asset(Images.drink, height: 100,width: 125, fit: BoxFit.cover,),
                             const SizedBox(width: 18),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                     ArticleTitle.drink,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Lucian',
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ),
                                   SizedBox(height: 10),
                                   Text("10 hours ago",
                                       style: TextStyle(fontSize: 13, color: Colors.black)),
                                   SizedBox(height: 10),
                                   Text(
                                     "Drinks & Smoothies",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontWeight: FontWeight.w300,
                                         fontSize: 15,
                                         fontFamily: 'Helvetica'
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 115,
                     width: 350,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Image.asset(Images.fruits, height: 100,width: 125, fit: BoxFit.cover,),
                             const SizedBox(width: 18),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                     ArticleTitle.fruits,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Lucian',
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ),
                                   SizedBox(height: 10),
                                   Text("10 hours ago",
                                       style: TextStyle(fontSize: 13, color: Colors.black)),
                                   SizedBox(height: 10),
                                   Text(
                                     "Fruits & Veggies",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontWeight: FontWeight.w300,
                                         fontSize: 15,
                                         fontFamily: 'Helvetica'
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 115,
                     width: 350,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Image.asset(Images.healthyFood, height: 100,width: 125, fit: BoxFit.cover,),
                             const SizedBox(width: 18),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                     ArticleTitle.healthyFood,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Lucian',
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ),
                                   SizedBox(height: 10),
                                   Text("4 hours ago",
                                       style: TextStyle(fontSize: 13, color: Colors.black)),
                                   SizedBox(height: 10),
                                   Text(
                                     "Healthy Food",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontWeight: FontWeight.w300,
                                         fontSize: 15,
                                         fontFamily: 'Helvetica'
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 115,
                     width: 350,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Image.asset(Images.remedies, height: 100,width: 125, fit: BoxFit.cover,),
                             const SizedBox(width: 18),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                     ArticleTitle.remedies,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Lucian',
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ),
                                   SizedBox(height: 10),
                                   Text("52 minutes ago",
                                       style: TextStyle(fontSize: 13, color: Colors.black)),
                                   SizedBox(height: 10),
                                   Text(
                                     "Grandma's Remedies",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontWeight: FontWeight.w300,
                                         fontSize: 15,
                                         fontFamily: 'Helvetica'
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 115,
                     width: 350,
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Image.asset(Images.fitness, height: 100,width: 125, fit: BoxFit.cover,),
                             const SizedBox(width: 18),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                     ArticleTitle.fitness,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Lucian',
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ),
                                   SizedBox(height: 10),
                                   Text("2 days ago",
                                       style: TextStyle(fontSize: 13, color: Colors.black)),
                                   SizedBox(height: 10),
                                   Text(
                                     "Fitness & Beauty",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontWeight: FontWeight.w300,
                                         fontSize: 15,
                                         fontFamily: 'Helvetica'
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}


///Custom Class for Articles
class Articles extends StatelessWidget {

   ArticleData data;

   Articles(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context,'/ArticleDetails',arguments: data.image);
          //Navigator.push(context,MaterialPageRoute(builder: (context) => MyDrinksDetails(image: data.image,)));
        },
        child: SizedBox(
          height: 200,
          width: 250,
          child: Column(
            children: [
              Hero(tag: data.image,
              child: Image.asset(data.image, height: 175, fit: BoxFit.cover,)),
              Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.category,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Helvetica'
                          ),
                        ),
                        Text(data.time,
                            style: const TextStyle(fontSize: 10, color: Colors.grey))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      data.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lucian',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
