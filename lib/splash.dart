import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash3.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: screenHeight * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              gradient: RadialGradient(
                colors: [
                  Colors.white.withOpacity(0.20),
                  Colors.white.withOpacity(0.10),
                ],
                radius: 50.0,
              ),
            ),
          ),
        )

        // Scaffold(
        //   backgroundColor: Colors.transparent,
        //   body: Column(
        //     children: [
        //       Flexible(
        //         child: Center(
        //           child: Text(
        //             "Crypton",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 50,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
