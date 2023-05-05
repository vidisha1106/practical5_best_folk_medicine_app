class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({Key? key}) : super(key: key);

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 5, right: 25, left: 25),
              child: Container(
                height: 75,
                decoration: BoxDecoration(boxShadow: [
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
                  decoration: InputDecoration(
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
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                height: 70,
                child: ListView(
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
                            child: Text(chipCategories[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Main articles",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("See more",
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(),),
              height: 375,
              width: 325,
              child: Column(
                children: [
                  Image.asset(Images.ocean),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Life",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text("6 hours ago",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10),
                    child: Text(
                      "Our Oceans are Losing Oxygen at a Dangerous Rate due to Temperatur...",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
