import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Mycolors.background,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                //width: size.width,
                //height: size.width + 250,
                width: screenWidth,
                height: screenWidth,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                      radius: 0.50,
                      colors: [Mycolors.blueball, Mycolors.background]),
                ),
              ),
            ),
            Positioned(
              top: 450,
              child: Container(
                width: screenWidth,
                height: screenWidth,
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
