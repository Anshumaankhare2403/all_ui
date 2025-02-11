import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inputff extends StatelessWidget {
  const Inputff({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 233, 233, 233),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
            hintText:
                "Enter what you're looking for", // This stays inline with input
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
          ),
        ));
  }
}
