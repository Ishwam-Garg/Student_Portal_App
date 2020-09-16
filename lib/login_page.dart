import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 50,left: 30),
                    child: Text('Hello',style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 130,left: 30),
                    child: Text('There',style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 110,left: 265),
                    child: Text('.',style: GoogleFonts.montserrat(fontSize: 100,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),],),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 30,right: 30),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold),
                      hintText: 'abc@xyz.com',
                      hintStyle: GoogleFonts.montserrat(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(left: 30,top: 15),
                    child: InkWell(
                      child: Text('Forgot Password?',style: GoogleFonts.montserrat(
                          color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                    ),),
                  SizedBox(height: 30,),
                  Container(
                    height: 40,
                    child: Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.blueAccent,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){},//place login here
                        child: Center(
                          child: Text('Login',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),),
                      ),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 40,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('images/facebook.png')),
                            ),
                            Text('Log in with Facebook',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
