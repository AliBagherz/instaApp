import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(right: 7.0),
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage (
                        image: new NetworkImage("http://s4.picofile.com/file/8396704976/prophessor.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  new Text('Professor',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        
      ],
    );
  }

}