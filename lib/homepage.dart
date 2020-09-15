import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homedrawer.dart';

class DrawerSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      body: PageView(
        children: <Widget>[
          //create pages here
          Container(color: Colors.green,),
          Container(color: Colors.blue),
        ],
        pageSnapping: true,
      ),
    );
  }
}









