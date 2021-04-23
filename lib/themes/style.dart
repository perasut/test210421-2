import 'package:flutter/material.dart';

// ThemeData appTheme() {
//   return ThemeData(
//     fontFamily: 'Montserrat',
//     primaryColor: Colors.blue,
//     accentColor: Colors.blueAccent,
//     buttonColor: Colors.lightBlue,
//   );
// }

class MyStyle {

  Color darkColor = Color(0xff000081);
  Color primaryColor = Color(0xff4825b2);
  Color lightColor = Color(0xff7e52e5);

  ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'Montserrat',
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
      buttonColor: Colors.lightBlue,
    );
  }

  SafeArea buildBackground(double screenWidth, double screenHeight) {
    return SafeArea(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top1.png')),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top2.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom1.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom2.png')),
            ),
          ],
        ),
      ),
    );
  }


  BoxDecoration boxDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white60,
      );

  TextStyle redBoldStyle() =>
      TextStyle(color: Colors.red.shade700, fontWeight: FontWeight.bold);

  Widget showLogo() => Image.asset('images/logo.png');
  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: darkColor,
        ),
      );

  Widget titleH2White(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      );

  Widget titleH3(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          // fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget titleH3White(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          // fontWeight: FontWeight.bold,
          color: Colors.white54,
        ),
      );

  MyStyle();
}
