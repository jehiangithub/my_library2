
import 'package:flutter/material.dart';

import 'landing.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LandingPage()));
            },
          ),
          title: Text("Notification"),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            width: double.maxFinite,
            child: ListView(
              children: <Widget>[
                Card(
                  color: Color(0xffc7eff8),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Peminjaman Buku',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pintar Matematika',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '17 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xfff8f3c7),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pengembalian Buku',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Kimia Kelas X',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '12 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xfff8dec7),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0,bottom: 3),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Telat',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Buku ini telah melewati waktu pengembalian',
                                                style: TextStyle(fontSize: 15,color:Color(0xFF999999)),
                                              )),
                                        ),
                                      ]
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pintar Matematika',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '17 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xffc7eff8),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Peminjaman Buku',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pintar Matematika',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '17 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xfff8f3c7),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pengembalian Buku',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Kimia Kelas X',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '12 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xfff8dec7),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0,bottom: 3),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Telat',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Buku ini telah melewati waktu pengembalian',
                                                style: TextStyle(fontSize: 15,color:Color(0xFF999999)),
                                              )),
                                        ),
                                      ]
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Judul Buku',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 88.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pintar Matematika',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Pengembalian',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '17 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Tanggal Peminjaman',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                ':',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, bottom: 5),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '14 Januari 2021',
                                                style: TextStyle(fontSize: 15),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 125),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '08.00',
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
