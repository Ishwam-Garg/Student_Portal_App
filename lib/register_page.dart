import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_portal/homepage.dart';
import 'login_page.dart';
import 'package:email_validator/email_validator.dart';


class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {

  String password,username,email;
  final _formKey = GlobalKey<FormState>();

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
                    child: Text('Welcome,',style: GoogleFonts.montserrat(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 130,left: 30),
                    child: Text('Hi,',style: GoogleFonts.montserrat(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 140,left: 130),
                    child: Text('there',style: GoogleFonts.montserrat(fontSize: 70,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 0,left: 30),
              child: Form(
                autovalidate: false,
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (value){
                        if (EmailValidator.validate(value)!=true)
                          {
                            return "Enter a valid email";
                          }
                        email = value;
                        return null;
                      },decoration: InputDecoration(
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
                        else if (value.length<8)
                        {
                          return 'Password must be 8 digits long';
                        }
                        password = value;
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold),
                        hintStyle: GoogleFonts.montserrat(),
                        hintText: 'min 8 digits',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      validator: (value){
                        if (value.isEmpty)
                        {
                          return 'Please confirm passwords';
                        }
                        else if (value != password)
                        {
                          return 'Passwords Does Not Match';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'CONFIRM PASSWORD',
                        labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold),
                        hintStyle: GoogleFonts.montserrat(),
                        hintText: '',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      validator: (value){
                        if (value.isEmpty)
                        {
                          return 'Please enter a username';
                        }
                        username = "@"+value;
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold),
                        hintStyle: GoogleFonts.montserrat(),
                        prefixText: '@',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20,right: 20,top: 0),
              height: 40,
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.blueAccent,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: (){
                    if(_formKey.currentState.validate())
                      {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DrawerSide()),
                        );
                      }
                  },//place login here
                  child: Center(
                    child: Text('Sign Up',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),),
                ),),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20,right: 20,top: 0),
              height: 40,
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.blueAccent,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Center(
                    child: Text('Back',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),),
                ),),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
