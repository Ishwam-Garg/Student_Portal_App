import 'package:student_portal/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:student_portal/login_page.dart';
import 'package:fluttertoast/fluttertoast.dart';


class reset extends StatefulWidget {
  @override
  _resetState createState() => _resetState();
}

class _resetState extends State<reset> {

  final _formKey2 = GlobalKey<FormState>();
  String reset_email;
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
                  SizedBox(height: 50,),
                  Container(
                    padding: EdgeInsets.only(top: 130,left: 30),
                    child: Text('Reset Password',style: GoogleFonts.montserrat(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 110,left: 265),
                    child: Text('.',style: GoogleFonts.montserrat(fontSize: 100,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),],),),
            Container(
              padding: EdgeInsets.only(top: 20,left: 30,right: 30),
              child: Column(
                children: <Widget> [
                  Form(
                      key: _formKey2,
                      child: TextFormField(
                        showCursor: true,
                        //Validation
                        validator: (value){
                          if (EmailValidator.validate(value)!=true)
                          {
                            return "Enter a valid email";
                          }
                          return null;
                        },
                        onChanged: (val){
                          setState(() {
                            reset_email = val;
                          });
                        },
                        //Decoration
                        decoration: InputDecoration(
                          labelText: 'Enter Your Email Here',
                          labelStyle: GoogleFonts.montserrat(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),
                          hintText: 'abc@xyz.com',
                          hintStyle: GoogleFonts.montserrat(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),),),
                      ),
                  ),
                  SizedBox(height: 30,),
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
                        onTap: () async {
                          if(_formKey2.currentState.validate())
                          {
                              //User _user = await FirebaseAuth.instance.sendPasswordResetEmail(email: reset_email);
                          }
                        },//place login here
                        child: Center(
                          child: Text('Reset Password',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),),
                      ),),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
