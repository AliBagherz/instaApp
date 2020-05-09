import 'package:flutter/material.dart';
import 'package:navig/List_Stories.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context , index) {
        if (index == 0) {
          return SizedBox(
            height: 110,
            child: ListStories(),
          );
        } else {
          return new Container();
        }
      },
    );
  }

}