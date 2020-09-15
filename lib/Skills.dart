import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {

  Widget skills(value) {
    return Container(
      margin: EdgeInsets.only(left: 30,bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.lightBlue[200],
            radius: 6.0,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black)
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:40.0,left: 50.0,right: 50.0,bottom: 30.0),
            child:  new Text("My Skills",style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue),)
          ),
          skills("C++"),
          skills("Python"),
          skills("Native App development"),
          skills("Flutter Development"),
          skills("Competitive Programming"),
          skills("Website designing"),
        ],
      ),
    );
  }
}
