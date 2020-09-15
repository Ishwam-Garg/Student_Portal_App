import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homedrawer.dart';
import 'social.dart';
import 'Skills.dart';
class DrawerSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      body: PageView(
        children: <Widget>[
          Container(color: Colors.blue,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("DashBoard",style: GoogleFonts.pacifico(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Doubts(),
                    Attendance(),
                  ],
                ),
              ],
            ),
          ),
          info(),
          Container(
            child: Skills(),
          ),
          Container(
            child: Social(),
          )
        ],
        pageSnapping: true,
      ),
    );
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
  Widget Doubts(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54,width: 5),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/classopen.gif',height: 100,fit: BoxFit.cover),
          RaisedButton(onPressed: (){},
            color: Colors.white,
            highlightColor: Colors.blue,
            child: Text("Doubts",style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black),),)
        ],
      ),
    );
  }
  Widget Attendance(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54,width: 5),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/checkbox.gif',height: 100,fit: BoxFit.cover),
          RaisedButton(onPressed: (){},
            color: Colors.white,
            highlightColor: Colors.blue,
            child: Text("Attendance",style: GoogleFonts.pacifico(fontSize: 20,color: Colors.black),),)
        ],),);
  }
}









