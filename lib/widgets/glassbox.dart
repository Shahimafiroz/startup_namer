import 'dart:ui';

import 'package:flutter/material.dart';

class Glassbox extends StatelessWidget {
  final hei;
  final wei;
  final child1;
  final child2;

  const Glassbox(
      {required this.hei,
      required this.wei,
      required this.child1,
      required this.child2});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: wei,
        height: hei,
        child: Stack(
          children: [
            /////blurr effect code
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 8,
                sigmaY: 8,
              ),
              child: Container(),
            ),

            //gradient

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 14, 13, 13).withOpacity(0.4),
                    Color.fromARGB(255, 79, 4, 73).withOpacity(0.1),
                  ],
                ),
              ),
            ),

            //child1

            Positioned(
              top: hei * 0.1,
              right: wei * 0.4,
              //left: wei * 0.3,
              child: child1,
            ),

            // child2

            Positioned(
              top: hei * 0.3,
              right: wei * 0.2,
              child: child2,
            ),
          ],
        ),
      ),
    );
  }
}
