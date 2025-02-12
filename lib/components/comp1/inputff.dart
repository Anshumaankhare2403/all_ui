import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inputff extends StatelessWidget {
  const Inputff({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.08, // 8% of screen height
      width: screenWidth * 0.9, // 90% of screen width
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 233, 233),
        borderRadius:
            BorderRadius.circular(screenWidth * 0.05), // Dynamic border radius
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size:
                  screenWidth * 0.06, // Adjust icon size based on screen width
            ),
          ),
          hintText: "Enter what you're looking for",
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.025),
        ),
      ),
    );
  }
}
