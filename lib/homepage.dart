
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homedrawer.dart';
import 'social.dart';
import 'Skills.dart';
import 'portfolio.dart';
import 'login_page.dart';
import 'AttendanceScreen.dart';

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
    return WillPopScope(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
            drawer: HomeDrawer(),
            body: PageView(
                children: <Widget>[
                Container(color: Colors.blue,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Home",style: GoogleFonts.pacifico(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(bottom: 20,left: 5,right: 5),
                  child: Material(
                    color: Colors.blue,
                    elevation: 0,
                    //shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Doubts(),
                            Attendance(),
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Search(),
                            Portfolio(),
                          ],),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("Swipe right for Colleagues panel",style: GoogleFonts.pacifico(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
        pageSnapping: true,
      ),
    ),
        onWillPop: _onBack);
  }
  Future<bool> _onBack()
  {
    print("called");
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: Text("Are you Sure"),
          content: Text("Would you like to exit the app??"),
          actions: <Widget>[
            new GestureDetector(
              onTap: ()=>Navigator.of(context).pop(false)
              ,child: Text("No",style: GoogleFonts.montserrat(fontSize: 20),),
            ),
            SizedBox(height: 16),
            new GestureDetector(
              onTap: ()=> SystemNavigator.pop(),
              child: Text("Yes",style: GoogleFonts.montserrat(fontSize: 20)),
            ),
            SizedBox(height: 16),
            /*
            new GestureDetector(
              onTap: ()
              {
                FirebaseAuth.instance.signOut();
                Fluttertoast.showToast(
                  msg: 'Signed Out',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.black,
                  fontSize: 20,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.white,
                );
                SystemNavigator.pop();
              },
              child: Text("Sign Out and Exit",style: GoogleFonts.montserrat(fontSize: 20)),
            ),
            */
          ],
        )
    )??
        false;
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
  //To Set Onclick Properties
  Widget Doubts(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15),
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.blueAccent,
            elevation: 10.0,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 180,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/classopen.gif',height: 100,fit: BoxFit.cover),
                    Text('Doubts',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget Attendance(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 5,right: 15,bottom: 15),
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.blueAccent,
            elevation: 10.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AttendancePage()),
                );
              },
              child: Container(
                height: 180,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/checkbox.gif',height: 100,fit: BoxFit.cover),
                    Text('Attendance',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],),
              ),
            ),
          ),
        ],
      ),
      );
  }
  //Portfolio Button Done
  Widget Portfolio(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 5,right: 15,bottom: 25),
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.blueAccent,
            elevation: 10.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => port_folio()),
                );
              },
              child: Container(
                height: 180,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/student.gif',height: 100,fit: BoxFit.cover),
                    Text('Portfolio',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget Search(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 25),
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.blueAccent,
            elevation: 10.0,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 180,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/searching.gif',height: 100,fit: BoxFit.cover),
                    Text('Search',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],),
              ),
            ),
          ),
        ],
      ),
    );
  }


}









