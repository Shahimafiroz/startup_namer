import 'package:crypton/widgets/glassMorphismContainer.dart';
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
                image: AssetImage("assets/splash5.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          // right: 0,
          child: GlassMorphismContainer(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            height: screenHeight * 0.30,
            width: screenWidth * 0.90,
            borderRadius: 25.0,
          ),
        )

        //Positioned(child: GlassMorphismContainer)
      ],
    );
  }
}

// class GlassMorphismContainer extends StatelessWidget {
//   final double height;
//   final double width;
//   final double borderRadius;

//   const GlassMorphismContainer({
//     Key? key,
//     required this.screenHeight,
//     required this.screenWidth,
//     required this.height,
//     required this.width,
//     this.borderRadius = 20.0,
//   }) : super(key: key);

//   final double screenHeight;
//   final double screenWidth;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: screenHeight * 0.30,
//       width: screenWidth * 0.90,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(
//           Radius.circular(this.borderRadius),
//         ),
//         gradient: RadialGradient(
//           colors: [
//             Color.fromARGB(255, 243, 244, 245).withOpacity(0.40),
//             Colors.white.withOpacity(0.90),
//           ],
//           radius: 50.0,
//         ),
//       ),
//     );
//   }
// }
