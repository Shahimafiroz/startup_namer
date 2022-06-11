import 'package:flutter/material.dart';

import 'mycolors.dart';

class Entrance extends StatefulWidget {
  Entrance({Key? key}) : super(key: key);

  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(30),
                width: screenWidth - 50,
                height: screenWidth - 50,
                // child: Image.asset("assets/icon.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
