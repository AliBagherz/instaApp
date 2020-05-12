import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: 7.0),
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
                  new Text('پروفسور',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        new Container(
          child: new PhotoView(
            imageProvider: new NetworkImage(
                "http://s4.picofile.com/file/8396708784/michael.jpg",
            ),
            maxScale: 0.22,
            minScale: 0.22,
          ),
          height: 230.0,
          width: MediaQuery.of(context).size.width,
        ),

        new Padding(
          padding: EdgeInsets.all(16.0),
          child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    child: new Icon(FontAwesomeIcons.heart),
                    margin: EdgeInsets.only(left: 5.0),
                  ),
                  new Container(
                    child: new Icon(FontAwesomeIcons.comment),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                  ),
                  new Container(
                    child: new Icon(FontAwesomeIcons.paperPlane ,),
                    margin: EdgeInsets.only(right: 5.0),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              new Icon(FontAwesomeIcons.bookmark)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        new Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: new Text("لایک شده توسظ شرلوک و باقر و 85 نفر دیگر" , style: TextStyle(fontWeight: FontWeight.w700),),
        ),
        new Padding(
          padding: EdgeInsets.symmetric(horizontal:16.0,vertical: 3.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text('پروفسور : ' , style: TextStyle(fontWeight: FontWeight.bold)),
              new Expanded(
                  child: new Text(
                    'مایکل جان داداش تولدت مبارک',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
              )
            ],
          ),
        ),
        new Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: new Row(
            children: <Widget>[
              new Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    image: new NetworkImage("http://up.iranblog.com/uploads/cee867e5c207114c722c35bd8791aaf1.jpg"),
                    fit: BoxFit.fill
                  )
                ),
                margin: EdgeInsets.only(right:5.0 , left:10),
              ),
              new Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "نظر دهید ...",
                    hintStyle: TextStyle(fontWeight: FontWeight.w400)
                  ),
                ),
              )
            ],
          ),
        ),
        new Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: new Text("ده دقیقه پیش" , style: TextStyle(color: Colors.grey)),
        )
      ],
    );
  }
}