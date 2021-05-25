import 'package:flutter/material.dart';
import 'booking_page.dart' as booking;
import 'beranda_page.dart' as beranda;
import 'article_page.dart' as article;

class Home extends StatefulWidget {
  static String tag = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new beranda.BerandaPage(), new booking.BookingPage(), new article.ArticlePage()];

  //TabController controller;

  @override
  void initState() {
    //controller = TabController(vsync: this, length: 3);
    super.initState();
  }

  /*
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      /*
      TabBarView(controller: controller,children: <Widget>[
        beranda.BerandaPage(),
        booking.BookingPage(),
        article.ArticlePage(),
      ],),
      */
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
      /*
      Material(
        color: Colors.white,
        child: TabBar(controller: controller, tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home,color: Colors.black,),child: Text("Home",style: TextStyle(color: Colors.black),)
        ),
        Tab(
          icon: Icon(Icons.book,color: Colors.black,),child: Text("Booking",style: TextStyle(color: Colors.black),)
        ),
        Tab(
          icon: Icon(Icons.article_outlined,color: Colors.black,),child: Text("Article",style: TextStyle(color: Colors.black),)
        ),
      ],),
        ),
        */
    );
  }
}
