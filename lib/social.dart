import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

  _launch_url(url) async
  {
    if (await canLaunch(url))
    {
      await launch(url);
    }
    else{
      throw "Cannot launch the URL $url";
    }
  }

  Widget Social(name,url,color){
    return Container(
      child: RaisedButton(
        onPressed: (){_launch_url(url);},
        child: new Text(name),
        textColor: Colors.white,
        color: color,
        padding: const EdgeInsets.all(15),
        highlightColor: Colors.blueAccent,
      ),
    );
  }

  Widget about(value) {
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
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo)
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(child:
        Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50,bottom: 10),
                alignment: Alignment.center,
                child: Text("About Me",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.blue))
              ),
              about("School: DPSG"),
              about("College: AKGEC"),
              about("Phone: 8851850004"),
              about("Nationality: Indian"),
              about("Email: ishwamgarg19@gmail.com"),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 10),
                child: Text("My social Media",style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Social("facebook","https://www.facebook.com/profile.php?id=100008333706851l",Colors.blue),
                  SizedBox(width: 10,),
                  Social("Blog", "https://www.thebtechian.com/", Colors.green),
                  SizedBox(width: 10,),
                  Social("instagram","https://www.instagram.com/ishwamgarg/?hl=en",Colors.pink),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Social("github","https://www.github.com/Ishwam-Garg",Colors.black),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20,bottom: 20),
                child: Text("Thank You and Stay Safe!",style: GoogleFonts.pacifico(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold)
              )
              ),],
      ),
      ),
    );
  }
}
