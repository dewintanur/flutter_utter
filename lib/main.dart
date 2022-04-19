import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Dewinta',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // A widget which will be started on application startup
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products", textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0)),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List names = [
    "Adidas",
    "Nike",
    "Skechers",
    "Airwalk",
    "Diadora"
  ];
  List jenis = [
    "A-031",
    "N-073",
    "S-089",
    "R-065",
    "D-025"
  ];
  List stok = [
    "2",
    "3",
    "2",
    "5",
    "4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blueGrey[100],
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 66.0,
                                height: 88.0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.brown,
                                  foregroundColor: Colors.brown,
                                  backgroundImage: NetworkImage("https://cdn.antaranews.com/cache/800x533/2022/03/09/collage9.jpg"),
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                Text(
                                  names[index],
                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                Text(jenis[index], style: TextStyle(color: Colors.black)),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    color: Colors.orange[200],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text("Stock " + stok[index], style: TextStyle(color: Colors.black)),
                                  ),
                                )
                              ]),
                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Icon(
                                Icons.delete,
                                size: 30.0,
                                color: Colors.red,
                              ))
                        ],
                      )),
                ))));
  }
}
