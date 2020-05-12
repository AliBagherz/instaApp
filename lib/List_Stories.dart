import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListStories extends StatelessWidget {

  Row topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text('استوری ها' , style: TextStyle(fontWeight: FontWeight.bold)),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text('مشاهده همه' , style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );


  final stories = new Expanded(
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
          itemBuilder: (context , index) {
            return new Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                new Container(
                height: 50.0 ,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("http://up.iranblog.com/uploads/cee867e5c207114c722c35bd8791aaf1.jpg")
                      )
                  ),
                  margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 1.0),
                ),
                index == 0 ?
                    new CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: new Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      radius: 12,
                    ) : new Container()
              ],
            );
          }
      )
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 5.0),
      child: new Column(
        children: <Widget>[
          topText,
          stories
        ],
      ),
    );
  }

}