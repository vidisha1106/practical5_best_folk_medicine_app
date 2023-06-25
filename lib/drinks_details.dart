import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/app_constants/article_title.dart';

class MyDrinksDetails extends StatefulWidget {

  const MyDrinksDetails({Key? key}) : super(key: key);

  @override
  State<MyDrinksDetails> createState() => _MyDrinksDetailsState();
}

class _MyDrinksDetailsState extends State<MyDrinksDetails> {



  bool favourite=false;


  @override
  Widget build(BuildContext context) {
    var arg=ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          )
        ],
        leadingWidth: 25,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Hero Widget Used
            Hero(
              tag: arg!,
              child: Image.asset(
                arg as String,
                fit: BoxFit.contain,
              ),
            ),

            ///Content Title
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                textAlign: TextAlign.left,
                ArticleTitle.fruits,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    "Written by bestfolkmedicine",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Helvetica'),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Text("6 hours ago",
                    style: TextStyle(fontSize: 15, color: Colors.grey)),

                ///Favourite icon Button
                IconButton(
                  onPressed: () {
                    setState(() {
                      favourite=!favourite;
                    });
                  },
                  icon: Icon(Icons.star, size: 25,color: favourite? Colors.grey : Colors.blue,),
                )
              ],
            ),

            ///Content Description
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                textAlign: TextAlign.left,
                ArticleContent.para1,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                textAlign: TextAlign.left,
                ArticleContent.para2,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                textAlign: TextAlign.left,
                ArticleContent.para3,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
