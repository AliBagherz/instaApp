import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:navig/My_Home_Page.dart';
void main() => runApp(new MyApp()) ;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'InstaApp',
        debugShowCheckedModeBanner: false,
        home: new  Directionality(textDirection: TextDirection.rtl, child: MyHomePage()),
      theme: new ThemeData(
        fontFamily: 'IranSans',
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
    );
  }
}
