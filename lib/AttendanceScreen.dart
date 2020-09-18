import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  //Table Controller
  CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("Attendance",style: GoogleFonts.pacifico(color: Colors.white,fontSize: 50),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    color: Colors.blue,
                    child: Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: TableCalendar(
                        onDaySelected: (date,events)
                        {

                        },
                        builders: CalendarBuilders(),
                        headerStyle: HeaderStyle(
                          formatButtonShowsNext: false,
                        ),
                        initialCalendarFormat: CalendarFormat.month,
                        calendarStyle: CalendarStyle(
                          todayColor: Colors.blue,
                        ),
                        calendarController: _controller,
                        availableGestures: AvailableGestures.horizontalSwipe,
                        headerVisible: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
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
