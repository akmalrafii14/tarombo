import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tarombo/auth/login.dart';
import 'home.dart';

void main() => runApp(
      new MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/HomeScreen': (BuildContext context) => HomePage(),
          '/LoginScreen': (BuildContext context) => LoginScreen(),
        },
      ),
    );

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffEB8242),
        child: Center(
          child: Text(
            "Tarombo",
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
