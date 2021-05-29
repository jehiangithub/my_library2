import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import './landing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    final prefs = await SharedPreferences.getInstance();
    bool slogin;
    slogin = prefs.getBool('slogin') ?? false;

    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return slogin ? new LandingPage() : new LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xfffbb448),
    ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logincover.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("MY LIBRARY",style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox(height: 40,),
            Image.asset('assets/books.png'),
            SizedBox(height: 40,),
            Text("Welcome!",style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ],
        ),
        ),
      ),
    );
  }
}
