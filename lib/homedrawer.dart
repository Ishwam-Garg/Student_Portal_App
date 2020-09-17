import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'portfolio.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30,bottom: 30),
            color: Colors.blue,
            child: Text("Colleagues",style: GoogleFonts.pacifico(
              fontSize: 40,
              color: Colors.white,
              decorationThickness: 2,
              decorationColor: Colors.white,))
          ),
          Container(padding: EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
            color: Colors.white,
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset("images/programming.gif", width: 80, height: 80, fit: BoxFit.fill,),
                ),
                SizedBox(width: 8,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: "Ishwam Garg\n", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.black87)),
                  TextSpan(text: "@ishwam", style: TextStyle(fontFamily: 'Montserrat', color: Colors.black54)),
                ]),),
              ],),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: RaisedButton(onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Port()),);},
                              color: Colors.blue,
                              child: Text("View",style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),),)),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: RaisedButton(onPressed: (){
                                FirebaseAuth.instance.signOut();
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                                Fluttertoast.showToast(
                                  msg: 'Signed Out',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  textColor: Colors.black,
                                  fontSize: 20,
                                  timeInSecForIosWeb: 2,
                                );

                            },
                              color: Colors.blue,
                              child: Text("Sign Out",style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],),
          ), //My short Profile
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Anand Srivastava\n","@Anand","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Apra Jain\n","@Apra","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Avani Mittal\n","@Avani","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Harsh Gupta\n","@Harsh","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Piyush Shukla\n","@Piyush","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Manish\n","@Manish","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Snigdhha Tyagi\n","@Snigdhha","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif",context),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
        ]
    )
    );
  }

  Widget colleague(name,username,image,context){
    return Container(padding: EdgeInsets.only(top: 25, left: 8, right: 8, bottom: 25),
      color: Colors.white,
      //key: username,
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(image, width: 80, height: 80, fit: BoxFit.fill,),
            ),
            SizedBox(width: 8,),
            RichText(text: TextSpan(children: [
              TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.black87)),
              TextSpan(text: username, style: TextStyle(fontFamily: 'Montserrat', color: Colors.black54)),
            ]),),
          ],),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: RaisedButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Profile_gen(name,username,image)),
                      );
                    },
                      color: Colors.blue,
                      child: Text("View",style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),),)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Search_Bar(){
    //Implement search bar here
  }

  Widget Profile_gen(name,username,image){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 8),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(minRadius: 50,maxRadius: 100,backgroundImage: AssetImage(image),),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(children: [
              TextSpan(text: name, style: GoogleFonts.pacifico(fontSize: 30,color: Colors.blue)),
              TextSpan(text: username, style: GoogleFonts.pacifico(fontSize: 20,color: Colors.black54)),
            ]),),
          ],
        ),
      ),
    );
    //Generates a fake profile on pressing view
  }

}
