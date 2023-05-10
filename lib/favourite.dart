
import 'package:flutter/material.dart';

import 'app_constants/app_images.dart';
import 'app_constants/article_title.dart';

class MyFavouritePage extends StatefulWidget {
  const MyFavouritePage({Key? key}) : super(key: key);

  @override
  State<MyFavouritePage> createState() => _MyFavouritePageState();
}

class _MyFavouritePageState extends State<MyFavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Favourites"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
          ],
        ),
      ),
    );
  }
}

