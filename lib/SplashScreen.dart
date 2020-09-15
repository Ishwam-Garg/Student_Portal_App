import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'homepage.dart';
class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
          splash: Image(image: AssetImage('images/programming.gif'),width: 1000,height: 1000,),
          duration: 4000,
          nextScreen: DrawerSide(),
      splashTransition: SplashTransition.fadeTransition,
    )
    );
  }
}
