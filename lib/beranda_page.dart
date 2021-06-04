import 'package:flutter/material.dart';
import 'package:my_library/detail_page.dart';
import 'package:sqflite/sqflite.dart';
import 'api_service.dart';
import 'booksearch.dart';
import 'dbhelpers.dart';
import 'item_barang.dart';
import 'response_barang_model.dart';
import 'scan_page.dart';
import 'notification_page.dart';
import 'setting_page.dart';
import 'profile_page.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'userdetail.dart';

class BerandaPage extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
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
      body: GridBuku(),
    );
  }
}

class GridBuku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FutureBuilder<List<Datum>>(
              future: ApiService.getListBarang(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  List<Datum> listBarang = snapshot.data;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: listBarang?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        splashColor: Colors.indigo,
                        borderRadius: BorderRadius.circular(10.0),
                        child: itemBarang(listBarang[index]),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(data: listBarang[index])));
                        },
                      );
                    },
                  );
                }
              },
            )));
  }
}
