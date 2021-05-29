import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);
ThemeData _darkTheme = ThemeData(
    accentColor: Colors.green,
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey);
bool _light = true;
Future<bool> _lightF;

class _SettingPageState extends State<SettingPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  _saveTheme() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', _light);
  }

  _getTheme() async {
    _lightF = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _lightF,
        builder: (context, snapshot) {
          return MaterialApp(
            theme: _light ? _darkTheme : _lightTheme,
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                  leading: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context, false);
                      }),
                  title: Text("Settings")),
              body: new SingleChildScrollView(
                padding: new EdgeInsets.only(bottom: 20.0),
                child: new Center(
                  child: new Form(
                    //key: _formKey,
                    child: new Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Card(
                            margin: new EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 4.0,
                            child: new Padding(
                              padding: new EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                  right: 10.0,
                                  left: 10.0),
                              child: new Column(
                                children: <Widget>[
                                  Text(
                                    "Ganti Password",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.0,
                                        left: 10.0,
                                        top: 10.0,
                                        bottom: 10.0),
                                    child: TextField(
                                      style: new TextStyle(
                                          fontSize: 14.0,
                                          height: 1.0,
                                          color: Colors.black),
                                      decoration: new InputDecoration(
                                        hintText: "Masukkan Password Lama",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    10.0)),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 14.0,
                                                horizontal: 15.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.0,
                                        left: 10.0,
                                        top: 10.0,
                                        bottom: 10.0),
                                    child: TextField(
                                      style: new TextStyle(
                                          fontSize: 14.0,
                                          height: 1.0,
                                          color: Colors.black),
                                      decoration: new InputDecoration(
                                        hintText: "Masukkan Password Baru",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    10.0)),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 14.0,
                                                horizontal: 15.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: new EdgeInsets.only(top: 15.0)),
                                  RaisedButton(
                                    color: Colors.green,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    padding: new EdgeInsets.all(10.0),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Text(
                                          'SAVE',
                                          style: new TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      //_persistFormData();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(15.0)),
                              Text(
                                "Dark Mode",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                  value: _light,
                                  onChanged: (state) {
                                    setState(() {
                                      _light = state;
                                    });
                                    _saveTheme();
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
