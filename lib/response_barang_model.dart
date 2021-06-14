// To parse this JSON data, do
//
//     final responseBarang = responseBarangFromJson(jsonString);

import 'dart:convert';

ResponseBarang responseBarangFromJson(String str) =>
    ResponseBarang.fromJson(json.decode(str));

String responseBarangToJson(ResponseBarang data) => json.encode(data.toJson());

class ResponseBarang {
  ResponseBarang({
    this.code,
    this.data,
  });

  int code;
  List<Datum> data;

  factory ResponseBarang.fromJson(Map<String, dynamic> json) => ResponseBarang(
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
    this.isbn,
    this.idKategori,
    this.penerbit,
    this.pengarang,
    this.cover,
    this.detail,
    this.jumlah,
    this.createdAt,
  });

  int id;
  String judul;
  int isbn;
  int idKategori;
  String penerbit;
  String pengarang;
  String cover;
  String detail;
  int jumlah;
  DateTime createdAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        judul: json["judul"],
        isbn: json["isbn"],
        idKategori: json["id_kategori"],
        penerbit: json["penerbit"],
        pengarang: json["pengarang"],
        cover: json["cover"],
        detail: json["detail"],
        jumlah: json["jumlah"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "isbn": isbn,
        "id_kategori": idKategori,
        "penerbit": penerbit,
        "pengarang": pengarang,
        "cover": cover,
        "detail": detail,
        "jumlah": jumlah,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
      };
}
