import 'package:flutter/material.dart';
import 'dart:ui';

class WCAvatar extends StatefulWidget {
  @override
  _WCAvatarState createState() => _WCAvatarState();
}

class _WCAvatarState extends State<WCAvatar> {
  var _isRecording = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          _isRecording = !_isRecording;
        });
      },
      child:   Container(
        //这是带圆角的图片
        margin: new EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image:AssetImage("images/a001.jpg"),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.all(const Radius.circular(4.0)),
        ),
        width: 35.0,
        height: 35.0,
      ),
    );
  }

  DecoratedBox buildDecoratedBox() {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(width: 2.0, color: Colors.greenAccent),
      ),
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Container(
          width: 30.0,
          height: 30.0,
          color: Colors.blue,
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.grey,
              shape: _isRecording ? BoxShape.rectangle : BoxShape.circle,
              borderRadius: _isRecording
                  ? BorderRadius.all(Radius.circular(8.0))
                  : null,

            ),
            child:  Image.asset(
              "images/a001.jpg", //arrow_icon
//                width: 30.0,
//                height: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
