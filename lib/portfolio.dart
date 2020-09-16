import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'social.dart';
import 'Skills.dart';

class Port extends StatefulWidget {
  @override
  _PortState createState() => _PortState();
}

class _PortState extends State<Port> {
  //static const routeName = '/next-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      debugShowCheckedModeBanner: false,
      home: port_folio(),
    );
  }
}

class port_folio extends StatefulWidget {
  @override
  _port_folioState createState() => _port_folioState();
}

class _port_folioState extends State<port_folio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new PageView(
        children: <Widget>[
          info(),
          Container(
            child: Skills(),
          ),
          Container(
            child: Social(),
        )
      ],),
    );
  }
}

Widget info(){
  return Container(
    color: Colors.white,child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top:50.0,left: 30.0,right: 30.0,bottom: 30.0),
        child:  new Text("My Portfolio",style: GoogleFonts.pacifico(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.blue)),
      ),
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black87,width: 8,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(minRadius: 20.0,backgroundImage: AssetImage("images/car.gif"),maxRadius: 100,),//will pass my image here,
      ),
      new Container(
        child: Text("Ishwam Garg",style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue)),
      ),
      new Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
        child: Text("Growing to become a Developer! \nSwipe to see more!",style: GoogleFonts.pacifico(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
      ),
    ],
  ),);
}
