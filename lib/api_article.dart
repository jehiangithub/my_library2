import 'dart:convert';
import 'package:http/http.dart' as http;

import 'response_article_model.dart';


class ApiArticle {
  static final _host = 'http://my-restap.herokuapp.com/user';

  static Future<List<Datum>> getListBarang() async {
    List<Datum> listBarang = [];
    final response = await http.get('$_host/getarticle'); //data json

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      ResponseArticle respBarang = ResponseArticle.fromJson(json);

      respBarang.data.forEach((item) {
        listBarang.add(item);
      });

      return listBarang;
    } else {
      return [];
    }
  }
}
