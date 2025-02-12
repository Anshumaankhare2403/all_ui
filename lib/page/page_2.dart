import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<IconData> arr = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.parachuteBox,
    FontAwesomeIcons.motorcycle,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: Colors.black87,
          onTap: (value) {},
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                  size: 31,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.pizzaSlice,
                  color: Colors.white,
                  size: 31,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidUser,
                  color: Colors.white,
                  size: 31,
                ),
                label: ""),
          ]),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "What you would like\nto find?",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 18,
              ),
              Row(children: [
                Expanded(
                    child: SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: arr.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 80,
                        margin: EdgeInsets.all(6.9),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 240, 238, 238),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          arr[index],
                          color: const Color.fromARGB(255, 172, 171, 171),
                        ),
                      );
                    },
                  ),
                ))
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 27),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 179, 202)),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 300,
                        width: 250,
                        // color: Colors.lightBlue,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 120,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        179, 191, 191, 191),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        "anshumaankhre",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/page2/paris.jpg'),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 14,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "data",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "data",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exclusive Hotels",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 27),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 179, 202)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage('assets/image/page2/paris.jpg'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ),
      )),
    );
  }
}
