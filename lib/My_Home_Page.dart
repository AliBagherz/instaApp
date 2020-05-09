import 'package:flutter/material.dart';
import 'package:navig/pages/Favorite_Page.dart';
import 'package:navig/pages/Home_Page.dart';
import 'package:navig/pages/Plus_page.dart';
import 'package:navig/pages/Profile_page.dart';
import 'package:navig/pages/Search_Page.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyHomePageState() ;
}

class MyHomePageState extends State<MyHomePage> {
  List<int> stat = [1,0,0,0,0];
  String currentPage = 'home' ;

  final Map<String,Widget> pages = <String,Widget> {
    'home' : new HomePage(),
    'plus' : new PlusPage(),
    'profile' : new ProfilePage(),
    'favorite' : new FavoritePage(),
    'search' : new SearchPage()
  };
  final Map<String,int> num = <String,int> {
    'home' : 0,
    'search' : 1,
    'plus' : 2,
    'favorite' : 3,
    'profile' : 4
  };
  Color itemColor(int status) {
    Color a ;
    if (status == 0) {
      a = Color.fromARGB(255, 150, 150, 150);
    } else if (status == 1) {
      a = Color.fromARGB(255, 0, 0, 0);
    }
    return a;
  }
  pageChanger (String page) {
    setState(() {
      currentPage = page ;
      for (int i = 0 ; i<5 ; i++) {
        if (i == num[page]) {
          stat[i] = 1 ;
        } else {
          stat[i] = 0 ;
        }
      }
    });
  }

  final appBar = new AppBar(
    title: new SizedBox(
      height: 40.0,
      child: new Image.asset("assets/images/insta_logo.png"),
    ),
    leading: new Icon(Icons.camera_alt),
    actions: <Widget>[
      new Padding(padding: EdgeInsets.only(right: 12.0) ,child: new Icon(Icons.send)),
    ],
    centerTitle: true,
    elevation: 1.0,
    backgroundColor: new Color(0xfff8faf8),

  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(icon: new Icon(Icons.home,color: itemColor(stat[0])), onPressed: () {pageChanger('home') ;} ),
            new IconButton(icon: new Icon(Icons.search,color: itemColor(stat[1])), onPressed: () {pageChanger('search') ;}),
            new IconButton(icon: new Icon(Icons.add_box,color: itemColor(stat[2])), onPressed: () {pageChanger('plus') ;}),
            new IconButton(icon: new Icon(Icons.favorite,color: itemColor(stat[3])), onPressed: () {pageChanger('favorite') ;}),
            new IconButton(icon: new Icon(Icons.account_box,color: itemColor(stat[4])), onPressed: () {pageChanger('profile') ;})
          ],
        ),
      ),
      body: pages[currentPage],
    );
  }

}