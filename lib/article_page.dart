import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'detailarticle.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key key}) : super(key: key);
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
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

  String _thumbnailUrl(dynamic photos) {
    return photos['thumbnailUrl'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Artikel', style: TextStyle(color: Colors.black, fontSize: 25.0)),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchPhotos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              // print(_age(snapshot.data[0]));
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailArticlePage(
                                      //item: listTiles[index],
                                      //tag: listTiles[index].newsTitle,
                                    )),
                          );
                        },
                        child: Card(
                          margin: EdgeInsets.only(bottom: 10.0),
                          elevation: 2.0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                /*
                                ListTile(
                                  // leading: CircleAvatar(
                                  //     radius: 30,
                                  //     backgroundImage: NetworkImage(snapshot.data[index]['picture']['large'])),
                                  title: Text(_name(snapshot.data[index])),
                                  subtitle: Text(_location(snapshot.data[index])),
                                  // trailing: Text(_age(snapshot.data[index])),
                                )
                                */
                                Hero(
                                  tag: Text(_name(snapshot.data[index])),
                                  child: Container(
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(_thumbnailUrl(snapshot.data[index])),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _name(snapshot.data[index]),
                                      style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        //Icon(Icons.person),
                                        /*
                                        Text(
                                          item.author,
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                        */
                                        SizedBox(height: 30.0),
                                        Icon(Icons.date_range),
                                        Text(
                                          '20 November 2021',
                                          style: TextStyle(fontSize: 14.0),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ));
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}