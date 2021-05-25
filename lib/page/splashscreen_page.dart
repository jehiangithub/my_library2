import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_library/page/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  static String tag = 'splashscreen_page';
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starSplashScreen();
  }

  starSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration,(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return LoginPage();
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
