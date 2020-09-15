import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:splashscreen/splashscreen.dart';
class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(seconds: 5,
        navigateAfterSeconds: DrawerSide(),
        photoSize: 150,
        backgroundColor: Colors.white,
        title: Text("Student Portal",style: GoogleFonts.pacifico(fontSize: 50,color: Colors.blue)),
        image: Image.asset('images/programming.gif',alignment: Alignment.center,),
        loaderColor: Colors.white,
      )
    );
  }
}
