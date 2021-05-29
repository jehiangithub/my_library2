
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:sqflite/sqflite.dart';

import 'dbhelpers.dart';
import 'userdetail.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  User user = User("alamat","notlp");
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _notlpController = TextEditingController();
  //bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  DbHelper dbHelper = DbHelper();
  List<Profil> profil;
  String keteranganProfil = '';

  @override
  void initState() {
    super.initState();
    _getProfil();
  }

  _getProfil() async {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Profil>> profilFuture = dbHelper.getProfil();
      profilFuture.then((profilList) {
        setState(() {
          profil = profilList;
          keteranganProfil = profil[0].nama;
          keteranganProfil = profil[0].alamat;
          keteranganProfil = profil[0].kota;
          keteranganProfil = profil[0].telp;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profile", style: TextStyle(color: Colors.white),),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, false);
              }),
          // actions: <Widget>[
          //   _status ? bottomSheetAlamat() : new Padding(),
          // ],
        ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                      Center(
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 85.0,
                                backgroundImage: _imageFile == null
                                    ? AssetImage('assets/user.jpg')
                                    : FileImage(File(_imageFile.path)),
                              ),
                              Positioned(
                                bottom: 20,
                                right: 20,
                                child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: ((builder) => bottomSheetCamera()));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 23.0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    )),
                              )
                            ],
                          ),
                      ),
                  SizedBox(
                    height: 10.0,
                  ),
                          Text(
                              "Nama",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                  Card(
                    child: Row(
                      children: <Widget> [
                        SizedBox(width: 10.0),
                        Icon(Icons.person),
                        SizedBox(width: 10.0),
                        SelectableText(
                        keteranganProfil = profil[0].nama, style: TextStyle(fontSize: 16.0),
                      ),
                        SizedBox(
                          height: 50,
                        ),
                    ]
                    ),
                  ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Kelas",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.0),
                          Icon(Icons.school),
                          SizedBox(width: 10.0),
                          SelectableText(
                            keteranganProfil = profil[0].alamat, style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ]
                    ),
                  ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "NIS",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.0),
                          Icon(Icons.local_library),
                          SizedBox(width: 10.0),
                          SelectableText(
                            keteranganProfil = profil[0].kota, style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ]
                    ),
                  ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "NISN",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.0),
                          Icon(Icons.local_library),
                          SizedBox(width: 10.0),
                          SelectableText(
                            keteranganProfil = profil[0].telp, style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ]
                    ),
                  ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Alamat",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.0),
                          Icon(Icons.home),
                          SizedBox(width: 10.0),
                          Text(_alamatController.text, style: TextStyle(fontSize: 16.0)),
                    SizedBox(width: 200),
                    Positioned(
                        right: 40,
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  builder: ((builder) => bottomSheetAlamat()));
                            },
                              child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 20.0,
                              ),
                            )),
                          SizedBox(
                            height: 50,
                          ),
                        ]
                    ),
                  ),
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //   hintText: "Masukkan Alamat",
                            //   enabled: !_status,
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "No Telepon",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget> [
                        SizedBox(width: 10.0),
                        Icon(Icons.phone),
                        SizedBox(width: 10.0),
                        Text(_notlpController.text, style: TextStyle(fontSize: 16.0)),
                        Positioned(
                            bottom: 20,
                            right: 20,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
                                    backgroundColor: Colors.white,
                                    isScrollControlled: true,
                                    builder: ((builder) => bottomSheetTelp()));
                              },
                              child: Positioned(
                                bottom: 20,
                                right: 100,
                                top: 100,
                                left: 300,
                                child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 20.0,
                                ),
                              ),
                            )
                        ),
                  //           TextFormField(
                  //             decoration: InputDecoration(
                  //             hintText: "Masukkan No Telepon",
                  //              enabled: !_status,
                  //   ),
                  // ),
                             SizedBox(
                               height: 50,
                             ),
                  //           !_status ? _getActionButtons() : new Container(),
                          ],
                          ),
                ),
                  SizedBox(
                    height: 20,
                  ),
        ],
      ),
      )
    ]
      )
    )
    );
  }

  Widget bottomSheetCamera() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text("Galeri"),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bottomSheetAlamat() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18 ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 20.0),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Center(
                  child: Text('Edit Alamat', style: TextStyle(
                 fontSize: 16.0, fontWeight: FontWeight.bold),),
                )
              ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
              child: TextField(
              decoration: InputDecoration(
              hintText: 'Masukkan Alamat'
              ),
              autofocus: true,
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
                padding: EdgeInsets.fromLTRB(140, 0, 0, 10),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("Cancel", style: TextStyle(color: Colors.blue),),
                      onPressed: (){
                        Navigator.pop(context, false);
                      },
                      ),
                    FlatButton(
                      child: Text("Save", style: TextStyle(color: Colors.blue),),
                      onPressed: () async {
                        user.alamat = _alamatController.text;
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                )
            ),
          ]
        )
    );
  }

  Widget bottomSheetTelp() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:18 ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Center(
                    child: Text('Edit No Telepon', style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),),
                  )
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukkan No Telepon'
                  ),
                  autofocus: true,
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                  padding: EdgeInsets.fromLTRB(140, 0, 0, 10),
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text("Cancel", style: TextStyle(color: Colors.blue),),
                        onPressed: (){
                          Navigator.pop(context, false);
                        },
                      ),
                      FlatButton(
                        child: Text("Save", style: TextStyle(color: Colors.blue),),
                        onPressed: (){
                          user.notlp = _alamatController.text;
                          Navigator.of(context).pop();
                          setState(() {
                            _notlpController.text = user.notlp;
                          });
                        },
                      )
                    ],
                  )
              ),
            ]
        )
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

}