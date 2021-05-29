import 'package:flutter/material.dart';

import 'detail_page.dart';
class MyBook extends StatefulWidget {
  MyBook({Key key}) : super(key: key);
  @override
  _MyBookState createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  PageController pageController;
  double pageOffset = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  
// ignore: non_constant_identifier_names
Container MyBookGreen(String imageVal, String heading, String subHeading) {
    return Container(
      width: 130.0,
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Wrap(
            children: [
              Image.asset(
                (imageVal),
                fit: BoxFit.cover,
                height: 130,
                width: 130,
              ),
              Container(
                height: 55,
                color: Colors.white,
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 54,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (heading),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff3f9d48),
                      ),
                      //padding: const EdgeInsets.only(top: 4, bottom: 3, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            (subHeading),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// ignore: non_constant_identifier_names
Container MyBookRed(String imageVal, String heading, String subHeading) {
    return Container(
      width: 130.0,
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Wrap(
            children: [
              Image.asset(
                (imageVal),
                fit: BoxFit.cover,
                height: 130,
                width: 130,
              ),
              Container(
                height: 55,
                color: Colors.white,
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 54,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (heading),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF9D3F3F),
                      ),
                      //padding: const EdgeInsets.only(top: 4, bottom: 3, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            (subHeading),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(left: 22),
            height: 198,
            //margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                MyBookGreen('assets/cover.jpg', 'Dhaka', '+5'),
                MyBookRed('assets/mountaint.png', 'Khulna', '+1'),
                MyBookGreen('assets/bglogin.png', 'Barisal', '+2'),
                MyBookRed('assets/efe-kurnaz.jpg', 'Rangpur', '+3'),
                MyBookGreen('assets/illstration.png', 'Chittaho', '+4'),
                MyBookRed('assets/image.png', 'Mymens', '+6'),
                MyBookGreen('assets/logincover.jpeg', 'City 7', '+7'),
              ],
            ),
          );
  }
}