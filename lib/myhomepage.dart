import 'package:crypton/mycolors.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Mycolors.background,
        child: Stack(
          children: [
            Positioned(
              top: -250,
              child: Container(
                //width: size.width,
                //height: size.width + 250,
                width: screenWidth,
                height: screenHeight,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                      radius: 0.50,
                      colors: [Mycolors.blueball, Mycolors.background]),
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                width: screenWidth,
                height: screenHeight,
                decoration: BoxDecoration(
                  gradient: RadialGradient(radius: 0.45, colors: [
                    Mycolors.pinkball,
                    Mycolors.background,
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
