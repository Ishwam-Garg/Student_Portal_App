import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register_page.dart';
import 'homepage.dart';
import 'package:email_validator/email_validator.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey1 = GlobalKey<FormState>();


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
                  Form(
                    key: _formKey1,
                    child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (value){
                          if (EmailValidator.validate(value)!=true)
                          {
                            return "Enter a valid email";
                          }
                          return null;
                        },
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
                      TextFormField(
                        validator: (value){
                          if (value.isEmpty)
                          {
                            return 'Please Enter a password';
                          }
                          return null;
                        },
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
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(left: 30,top: 15),
                    child: InkWell(
                      onTap: (){},
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
                        onTap: () async {
                          if (_formKey1.currentState.validate())
                            {
                              _formKey1.currentState.reset();
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => DrawerSide()),
                              );
                            }
                        },//place login here
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
                            Text('Log in with Facebook',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),],),
                      ),),),
                  SizedBox(height: 5),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20,top: 15),
                        child: Text("New User?",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 15),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => register()),
                            );
                          },
                          child: Text('Register',style: GoogleFonts.montserrat(
                              color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
