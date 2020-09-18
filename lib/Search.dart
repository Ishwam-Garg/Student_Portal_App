import 'package:flutter/material.dart';
import 'homepage.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {


  @override
  Widget build(BuildContext context) {


    return WillPopScope(child: new Scaffold(
      appBar: AppBar(
        title: Text("Mark Attendance Here"),
      ),
    ),
        onWillPop: _OnBackPressed,
    );
  }

  Future<bool> _OnBackPressed()
  {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }



}
