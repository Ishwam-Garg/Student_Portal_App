import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child:Row(children: <Widget>[
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
          ),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Anand Srivastava\n","@Anand","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Apra Jain\n","@Apra","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Avani Mittal\n","@Avani","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Harsh Gupta\n","@Harsh","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Piyush Shukla\n","@Piyush","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Manish\n","@Manish","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Snigdhha Tyagi\n","@Snigdhha","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
        ]
    )
    );
  }

  Widget colleague(name,username,image){
    return Container(padding: EdgeInsets.only(top: 25, left: 8, right: 8, bottom: 25),
      color: Colors.white,
      //key: username,
      child:Row(children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(image, width: 80, height: 80, fit: BoxFit.fill,),
        ),
        SizedBox(width: 8,),
        RichText(text: TextSpan(children: [
          TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.black87)),
          TextSpan(text: username, style: TextStyle(fontFamily: 'Montserrat', color: Colors.black54)),
        ]),),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 0,),
          padding: EdgeInsets.only(top: 50,left: 0,bottom: 0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: RaisedButton(onPressed: (){Profile_gen(name,username,image);},
                    color: Colors.blue,
                    child: Text("View",style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),),
                  )
              ),
            ],
          ),
        )
      ],),
    );
  }

  Widget Search_Bar(){
    //Implement search bar here
  }

  Widget Profile_gen(name,username,image){
    //Generates a fake profile on pressing view
  }

}
