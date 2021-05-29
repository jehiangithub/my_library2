import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lipsum/lipsum.dart' as lipsum;

class DetailArticlePage extends StatelessWidget {

final String apiUrl = "https://jsonplaceholder.typicode.com/photos/";

  Future<List<dynamic>> fetchPhotos() async {
    var result = await http.get(apiUrl);
    // return json.decode(result.body)['results'];
    return json.decode(result.body);
  }

  String _name(dynamic photos) {
    // return user['name']['title'] + " " + user['name']['first'] + " " +  user['name']['last'];
    return photos['title'];
  }

  String _url(dynamic photos) {
    return photos['url'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: _name,
                    child: Image.network(
                        'https://2.bp.blogspot.com/-vYY0BNbQh_4/WdrjFLQWtGI/AAAAAAAADsc/p2fuzPuzIbM7n4fYoc0WnycDZqHozZjKACEwYBhgL/s1600/Cover%2BLaporan%2BKinerja%2BFSH%2B2016.jpg'),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'Loremipsum',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text("20 November 2021")
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          lipsum.createParagraph(numParagraphs: 3),
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ))
          ],
        ),
      ),
    );
    /*
    return Container(
      child: FutureBuilder<dynamic>(
          future: fetchPhotos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              // print(_age(snapshot.data[0]));
              return PageView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Hero(
                                      tag: Text(_name(snapshot.data[index])),
                                      child: Image.network(_url(snapshot.data[index])),
                                  ),
                                  SizedBox(height: 10.0),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      children: [
                                        Text(_name(snapshot.data[index]), style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: [
                                            Icon(Icons.date_range),
                                          ],
                                        ),
                                        SizedBox(height: 20.0),
                                        Text(
                                          lipsum.createParagraph(numParagraphs: 3),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                              child: IconButton(
                                  icon: Icon(
                                      Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                              )
                            )
                          ],
                        );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
    */
  }
}
