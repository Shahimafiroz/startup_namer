import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassMorphismContainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;

  const GlassMorphismContainer({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.height,
    required this.width,
    this.borderRadius = 20.0,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.30,
      width: screenWidth * 0.90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(this.borderRadius),
        ),

        //blurr effect
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 248, 248, 247).withOpacity(0.40),
            Color.fromARGB(255, 247, 245, 245).withOpacity(0.90),
            // radius: borderRadius //20.0,
          ],
          radius: borderRadius,
        ),
      ),
    );
  }
}
