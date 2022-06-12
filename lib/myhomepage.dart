import 'package:crypton/widgets/background.dart';
import 'package:crypton/widgets/mycolors.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Background(screenWidth: screenWidth),
          ),
        ],
      ),
    );
  }
}
