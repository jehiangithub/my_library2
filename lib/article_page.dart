import 'package:flutter/material.dart';
import 'package:my_library/api_article.dart';
import 'package:my_library/item_article.dart';

import 'detailarticle.dart';
import 'response_article_model.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key key}) : super(key: key);
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Artikel', style: TextStyle(color: Colors.black, fontSize: 25.0)),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FutureBuilder<List<Datum>>(
              future: ApiArticle.getListBarang(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  List<Datum> listBarang = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: listBarang?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        splashColor: Colors.indigo,
                        borderRadius: BorderRadius.circular(10.0),
                        child: itemArticle(listBarang[index]),
                        onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailArticlePage(
                              data: listBarang[index]
                                )));
                        },
                      );
                    },
                  );
                }
              },
            ))));
  }
}