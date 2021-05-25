import 'package:flutter/material.dart';
import 'package:my_library/page/changepassword_page.dart';
import 'package:my_library/page/splashscreen_page.dart';
import 'page/login_page.dart';
import 'page/home.dart';

void main() => runApp(MaterialApp(home: SplashScreenPage()));

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashScreenPage.tag: (context) => SplashScreenPage(),
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
    ChangePasswordPage.tag: (context) => ChangePasswordPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
