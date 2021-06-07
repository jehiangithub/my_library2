import 'package:flutter/material.dart';

import 'response_article_model.dart';

Widget itemArticle(Datum data) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          child: Image.network(
            "https://my-restap.herokuapp.com/sampul_article/${data.sampul}",
            height: 50.0,
            width: 100,
            fit: BoxFit.cover,
            // width: double.infinity,
          ),
        ),
          SizedBox(width: 5.0),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                  data.judul,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      SizedBox(height: 10.0),
                      Icon(Icons.date_range),
                      Text("${data.createdAt}"),
                    ],
                  )
                ],
              )
          ),
        ],
      ),
    ),
  );
}
