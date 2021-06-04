import 'package:flutter/material.dart';
import 'package:my_library/landing.dart';

import 'book_data.dart';

class BookItemsSearch extends SearchDelegate<BookItem> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => (LandingPage())));
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? loadBookItem()
        : loadBookItem().where((p) => p.judul.startsWith(query)).toList();
    return mylist.isEmpty
        ? Text('Tidak dapat ditemukan...')
        : ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              final BookItem listitem = mylist[index];
              return ListTile(
                  onTap: () {
                    showResults(context);
                  },
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(listitem.judul),
                      Text(listitem.kategori),
                      Divider()
                    ],
                  ));
            },
          );
  }
}