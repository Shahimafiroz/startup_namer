import 'package:crypton/myhomepage.dart';
import 'package:crypton/widgets/glassbox.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          //background image
          //this is the code for the background of your splash screeen
          Positioned(
            // back ground image

            child: Container(
              height: screenHeight,
              width: screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //glassbox here we are calling the Glassbox widget from widget folder

          Positioned(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            bottom: screenWidth * 0.10,
            child: Glassbox(
              hei: screenWidth * 0.60,
              wei: screenWidth * 0.30,
              child1: Text(
                "Explore cryptocurrencies",
                style: TextStyle(
                    fontSize: 29,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'joan',
                    color: Color.fromARGB(255, 247, 244, 244)),
              ),
              child2: Text(
                "You can analyse and study the latest and most reliable \n                              cryptocurrency data!",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 226, 222, 222),
                  fontFamily: 'joan',
                ),
              ),
            ),
          ),

          //upper text
          Positioned(
            top: screenHeight * 0.06,
            left: screenWidth * 0.08,
            child: Text(
              "Crypton",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontFamily: 'joan',
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    )
                  ]),
            ),
          ),

          Positioned(
            top: screenHeight * 0.15,
            left: screenWidth * 0.1,
            child: Text(
              "Better returns on investments.",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'joan',
                wordSpacing: 2,
                letterSpacing: 2,
              ),
            ),
          ),

          Positioned(
            bottom: screenHeight * 0.1,
            left: screenWidth * 0.27,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.6)),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.blueAccent.withOpacity(0.6),
                    Colors.pinkAccent.withOpacity(0.4),
                  ])),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Myhomepage(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(minimumSize: Size(200, 40)),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
