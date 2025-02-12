import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/comp1/inputff.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<String> arr = [
    "assets/image/page1/page1 (2).jpg",
    "assets/image/page1/page1 (4).jpg",
    "assets/image/page1/page1 (1).jpg",
    "assets/image/page1/page1 (5).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Container
              Container(
                height: screenHeight * 0.35, // 35% of screen height
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(screenWidth * 0.08),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.06,
                      vertical: screenHeight * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.bars, size: screenWidth * 0.08),
                      SizedBox(height: screenHeight * 0.03),
                      Text(
                        "Find You",
                        style: TextStyle(fontSize: screenWidth * 0.07),
                      ),
                      Text(
                        "Inspiration",
                        style: TextStyle(
                          fontSize: screenWidth * 0.09,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Inputff(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Promo Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Text(
                  "Promo Today",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Promo Images (Horizontal List)
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: arr.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: screenWidth * 0.43,
                            margin: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.029),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(arr[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.08),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.08),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.8),
                                    Colors.black.withOpacity(.01),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // Large Promo Image
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Container(
                  height: screenHeight * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/page1/page1 (3).jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(screenWidth * 0.08),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.08),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.01),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
