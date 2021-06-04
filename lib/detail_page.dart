import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_library/api_service.dart';
import 'response_barang_model.dart';

class DetailPage extends StatefulWidget {
  final Datum data;
  DetailPage({this.data});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _id;
  Datum data;
  TextEditingController _judul,
      _isbn,
      _idkategori,
      _penerbit,
      _pengarang,
      _jumlah;
  ApiService service = ApiService();

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      //_isUpdate = true;
      _id = widget.data.id;

      _judul = TextEditingController(text: widget.data.judul);
      _jumlah = TextEditingController(text: widget.data.jumlah.toString());
      _isbn = TextEditingController(text: widget.data.isbn.toString());
      _idkategori =
          TextEditingController(text: widget.data.idKategori.toString());
      _penerbit = TextEditingController(text: widget.data.penerbit);
      _pengarang = TextEditingController(text: widget.data.pengarang);
    } else {
      _judul = TextEditingController();
      _jumlah = TextEditingController();
      _isbn = TextEditingController();
      _idkategori = TextEditingController();
      _penerbit = TextEditingController();
      _pengarang = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              //Image.network("https://my-restap.herokuapp.com/data_cover/${data.detail}"),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _judul,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Judul Buku'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _jumlah,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Jumlah Buku'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _isbn,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'No ISBN'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _idkategori,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Kategori'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _penerbit,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nama Penerbit'),
                  enabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  controller: _pengarang,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama Pengarang'),
                  enabled: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}