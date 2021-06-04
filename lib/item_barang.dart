import 'package:flutter/material.dart';
import 'response_barang_model.dart';

Widget itemBarang(Datum data) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          child: Image.network("https://my-restap.herokuapp.com/data_cover/${data.cover}",
            height: 100.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data.judul,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text("${data.jumlah} buah"),
                Text("${data.createdAt}"),
                //SelectableText(_valueToValidate)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
