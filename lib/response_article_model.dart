// To parse this JSON data, do
//
//     final responseArticle = responseArticleFromJson(jsonString);

import 'dart:convert';

ResponseArticle responseArticleFromJson(String str) => ResponseArticle.fromJson(json.decode(str));

String responseArticleToJson(ResponseArticle data) => json.encode(data.toJson());

class ResponseArticle {
    ResponseArticle({
        this.code,
        this.data,
    });

    int code;
    List<Datum> data;

    factory ResponseArticle.fromJson(Map<String, dynamic> json) => ResponseArticle(
        code: json["code"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.judul,
        this.isi,
        this.sampul,
        this.createdAt,
    });

    int id;
    String judul;
    String isi;
    String sampul;
    DateTime createdAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        judul: json["judul"],
        isi: json["isi"],
        sampul: json["sampul"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "isi": isi,
        "sampul": sampul,
        "created_at": createdAt.toIso8601String(),
    };
}
