import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
        children: <Widget>[
          Container(padding: EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
            color: Colors.white,
            child:Row(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("images/car.gif", width: 80, height: 80, fit: BoxFit.fill,),
              ),
              SizedBox(width: 8,),
              RichText(text: TextSpan(children: [
                TextSpan(text: "Ishwam Garg\n", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.black87)),
                TextSpan(text: "@ishwam", style: TextStyle(fontFamily: 'Montserrat', color: Colors.black54)),
              ]),),
            ],),
          ),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Mohit Kumar\n","@Mohit","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Apra Jain\n","@Apra","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Manish\n","@Manish","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
          colleague("Snigdhha Tyagi\n","@Snigdhha","images/student.gif"),
          Divider(height: 1, thickness: 1, color: Colors.blueGrey[900] ),
        ]
    )
    );
  }

  Widget colleague(name,username,image){
    return Container(padding: EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
      color: Colors.white,
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
      ],),
    );
  }

}
