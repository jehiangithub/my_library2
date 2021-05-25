class BookItem {
  final String judul;
  final String kategori;
  BookItem({this.judul, this.kategori});
}

List<BookItem> loadBookItem() {
  var fi = <BookItem>[
    BookItem(judul: "Liquid",kategori: "Sains"),
    BookItem(judul: "Naga",kategori: "Fiksi"),
    BookItem(judul: "Tsunami",kategori: "NonFiksi"),
  ];
  return fi;
}
