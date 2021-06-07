import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'response_article_model.dart';
import 'api_article.dart';

class DetailArticlePage extends StatefulWidget {
  final Datum data;
  DetailArticlePage({this.data});
  @override
  _DetailArticlePageState createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  int _id;
  Datum data;
  TextEditingController _judul, _isi, _idkategori, _sampul;
  ApiArticle service = ApiArticle();

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      //_isUpdate = true;
      _id = widget.data.id;

      _judul = TextEditingController(text: widget.data.judul);
      _isi = TextEditingController(text: widget.data.isi);
    } else {
      _judul = TextEditingController();
      _isi = TextEditingController();
    }
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
                    tag: _sampul,
                    child: Image.network(
                        'https://2.bp.blogspot.com/-vYY0BNbQh_4/WdrjFLQWtGI/AAAAAAAADsc/p2fuzPuzIbM7n4fYoc0WnycDZqHozZjKACEwYBhgL/s1600/Cover%2BLaporan%2BKinerja%2BFSH%2B2016.jpg'),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _judul,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Judul Article'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _isi,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Isi Article'),
                  enabled: false,
                ),
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
