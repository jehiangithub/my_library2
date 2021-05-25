import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Booking', style: TextStyle(color: Colors.black, fontSize: 25.0)),
      ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _showSimpleDialog(context);
            },
            child: Icon(Icons.add)),
            body: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: double.maxFinite,
            child: ListView(
              children: <Widget>[
                Card(
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
                  color: Color(0xFFD1D1D1),
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
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 65),
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
            
);
  }

  void _showSimpleDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        "Booking",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
              child: TextField(
                style: new TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: new InputDecoration(
                  hintText: "Masukkan Judul Buku",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),
            /*Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: new TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: new InputDecoration(
                  hintText: "Input",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),*/

            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  "Booking",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              ),
            )
          ],
        );
      },
    );
  }
}
