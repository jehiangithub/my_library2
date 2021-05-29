
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sqflite/sqflite.dart';
import 'booksearch.dart';
import 'dbhelpers.dart';
import 'detail_page.dart';
import 'itemfilter.dart';
import 'itemproduct.dart';
import 'itemproductfilter.dart';
import 'mybook_model.dart';
import 'scan_page.dart';
import 'notification_page.dart';
import 'setting_page.dart';
import 'profile_page.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'userdetail.dart';

class BerandaPage extends StatefulWidget {
  BerandaPage({Key key}) : super(key: key);
  static const String routeName = '/material/search';

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getProfil();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  DbHelper dbHelper = DbHelper();
  List<Profil> profil;
  String keteranganProfil = '';

  _getProfil() async {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Profil>> profilFuture = dbHelper.getProfil();
      profilFuture.then((profilList) {
        setState(() {
          profil = profilList;
          keteranganProfil = profil[0].nama;
          //keteranganProfil = profil[0].email;
        });
      });
    });
  }
  _logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('slogin', false);
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }

  PageController pageController;
  double pageOffset = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  
  final listFilter = <ItemFilter>[
    ItemFilter(1, 'Umum', false),
    ItemFilter(2, 'Filsafat', false),
    ItemFilter(3, 'Psikologi', false),
    ItemFilter(4, 'Agama', false),
    ItemFilter(5, 'Sosial', false),
    ItemFilter(6, 'Bahasa', false),
    ItemFilter(7, 'Teknologi', false),
    ItemFilter(8, 'Seni', false),
    ItemFilter(9, 'Sastra', false),
    ItemFilter(10, 'Sejarah', false),
    ItemFilter(11, 'Sains', false),
    ItemFilter(12, 'Matematika', false),
  ];
  final listProduct = <ItemProduct>[
    ItemProduct(
      'Kepemimpinan Perilaku Organisasi',
      'http://www.rajagrafindo.co.id/wp-content/uploads/2017/03/6.png',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, true),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Manajemen Strategis Organisasi Pelayanan',
      'http://www.rajagrafindo.co.id/wp-content/uploads/2020/06/Final-Manajemen-Strategis-Organisasi-Pelayanan-Kesehatan-Konsep-dan-Langkah-Praktis-Edisi-Revisi21.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, true),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Filsafat Ilmu Hakikat',
      'https://penerbitbukudeepublish.com/wp-content/uploads/2016/12/Filsafat-Ilmu-Hakikat-Mencari-Pengetahuan-revisi-Convert-depan-1-scaled.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, true),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Filsafat Pendidikan',
      'https://penerbitbukudeepublish.com/wp-content/uploads/2018/05/Filsafat-Pendidikan-Aswasulasikin-depan.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, true),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Modifikasi Perilaku',
      'https://penerbitbukudeepublish.com/wp-content/uploads/2018/03/Modifikasi-Perilaku-Seni-Merubah-Perilaku-Maladaftif-Sujoko-rev-1.0-Convert-depan1-1200x1795.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, true),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Manipulation and Persuasion',
      'https://i2.wp.com/anakrantau.id/wp-content/uploads/2020/04/52767249._SX318_SY475_.jpg?resize=318%2C469&ssl=1',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, true),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Agama Untuk Peradaban',
      'https://inc.mizanstore.com/aassets/img/com_cart/produk/agama-untuk-peradaban.jpg',
      'Rp5.499.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, true),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Jejak Seorang Pendakwah',
      'https://i.pinimg.com/236x/ec/13/e2/ec13e230a1d7c8fb87299f5e4485d5fd.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, true),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Sosiologi Keluarga',
      'https://cf.shopee.co.id/file/eb9ba25c9e35377128e20c47c7c87c1e',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, true),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Politik',
      'https://penerbitbukudeepublish.com/wp-content/uploads/2020/08/Politik-Partai-Politik-dan-Perempuan_Imron-Wasi-convert-depan-scaled.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, true),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Bahasa Indonesia Profesi',
      'https://penerbitbukudeepublish.com/wp-content/uploads/2018/11/Bahasa-Indonesia-Profesi-Zainal-revisi-3.0-Convert-depna.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, true),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Menguasai Bahasa Jepang',
      'https://cdn.gramedia.com/uploads/items/9786026210425_BUKU-SAKU-MEN__w600_hauto.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, true),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'AI dan ML',
      'https://images-na.ssl-images-amazon.com/images/I/51y3TyVKOuL.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, true),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Flutter Book',
      'https://static.codemagic.io/media/landing/ebook-flutter-libraries/e-book-cover-4@2x.png',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, true),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Seni Rupa Modern',
      'http://togamas.com/css/images/items/potrait/300400pxxx_7617_Seni_Rupa_Modern_Edisi_Revisi__.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, true),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Seni Berbicara',
      'https://ebooks.gramedia.com/ebook-covers/52600/image_highres/ID_SB2020MTH05SB.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, true),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Bumi Manusia',
      'https://jaganyala.files.wordpress.com/2017/03/1398034.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, true),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Laskar Pelangi',
      'https://cdn-2.tstatic.net/palembang/foto/bank/images/novel1_20180814_140404.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, true),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Sejarah Peradaban Dunia',
      'https://www.belbuk.com/images/products/buku/sejarah-budaya--filsafat/sejarah/5ada9ef806655l.JPG',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, true),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Sejarah Sumatra',
      'https://www.bukukita.com/babacms/displaybuku/66411_f.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, true),
        ItemProductFilter(11, false),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Carl Sagan Cosmos',
      'https://s0.bukalapak.com/img/0887345573/large/7938719_81825ff5_8410_4d2b_a50d_f0d49494ca4d_664_1024.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, true),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'Six Easy Pieces',
      'https://qph.fs.quoracdn.net/main-qimg-8c009a624dd0685a0b6474286df9625c',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, true),
        ItemProductFilter(12, false),
      ],
    ),
    ItemProduct(
      'The Math Book',
      'https://images.penguinrandomhouse.com/cover/9781465480248',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, true),
      ],
    ),
    ItemProduct(
      'Everything You Need To Ace Math',
      'https://images-na.ssl-images-amazon.com/images/I/41KgX0vdRXL._SX331_BO1,204,203,200_.jpg',
      '',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
        ItemProductFilter(6, false),
        ItemProductFilter(7, false),
        ItemProductFilter(8, false),
        ItemProductFilter(9, false),
        ItemProductFilter(10, false),
        ItemProductFilter(11, false),
        ItemProductFilter(12, true),
      ],
    ),
  ];
  final listProductFilter = <ItemProduct>[];

  @override
  Widget build(BuildContext context) {
    var isFilterActive =
        listFilter.where((element) => element.isFilterActive).isNotEmpty;
    listProductFilter.clear();
    if (!isFilterActive) {
      listProductFilter.addAll(listProduct);
    } else {
      listProduct.forEach((element) {
        var isPassed = false;
        var itemProductFilter = element.listProductFilter;
        for (var index = 0; index < itemProductFilter.length; index++) {
          var productFilter = itemProductFilter[index];
          var itemFilter = listFilter[index];
          if (productFilter.isFilterActive && itemFilter.isFilterActive) {
            isPassed = true;
            break;
          }
        }
        if (isPassed) {
          listProductFilter.add(element);
        }
      });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: BookItemsSearch());
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BarcodeReaderPage()));
            },
            icon: Icon(
              Icons.qr_code_scanner,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(keteranganProfil),
              accountEmail: Text("jehianathayata@gmail.com"),
              //SelectableText(keteranganProfil = profil[0].nama),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              onTap: () {
                _logOut();
              },
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "My Book",
                  style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MyBook(),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Catalog",
                  style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listFilter.length,
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, index) {
                var item = listFilter[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(item.name),
                    selected: item.isFilterActive,
                    onSelected: (_) => setState(
                        () => item.isFilterActive = !item.isFilterActive),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              //itemCount: imageList.length,
              itemCount: listProductFilter.length,
              itemBuilder: (context, index) {
                var itemProduct = listProductFilter[index];
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/loading.gif',
                      image: itemProduct.photo,
                      //Image.network(
                      //    itemProduct.photo,
                      //),
                      fit: BoxFit.cover,
                    ),
                  ),
                  ),
                );
              },
              staggeredTileBuilder: (index) {
                return new StaggeredTile.count(1, index.isEven ? 1.2 : 1.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}