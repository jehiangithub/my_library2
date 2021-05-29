import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'booking_page.dart' as booking;
import 'beranda_page.dart' as beranda;
import 'article_page.dart' as article;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with SingleTickerProviderStateMixin {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new beranda.BerandaPage(), new booking.BookingPage(), new article.ArticlePage()];

  @override
  void initState() {
    super.initState();
  }

  _logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('slogin', false);
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Color(0xFF3C80FF),
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('Beranda',
                  style: TextStyle(
                    fontSize: 12.0,
                      color: _bottomNavCurrentIndex == 0
                          ? Color(0xFF3C80FF)
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.assignment,
                color: Color(0xFF3C80FF),
              ),
              icon: new Icon(
                Icons.assignment,
                color: Colors.grey,
              ),
              title: new Text('Booking',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: _bottomNavCurrentIndex == 1
                          ? Color(0xFF3C80FF)
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Color(0xFF3C80FF),
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              title: new Text('Article',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: _bottomNavCurrentIndex == 2
                          ? Color(0xFF3C80FF)
                          : Colors.grey)),
            ),
          ],
        ),
        );
  }
}
/*
RaisedButton(
                    onPressed: () => _logOut(),
                    color: Colors.white,
                    child: const Text('Logout',
                        style: TextStyle(fontSize: 18)),
                  )
*/