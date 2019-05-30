import 'package:flutter/material.dart';
import 'dart:ui';
import 'scanVC.dart';
import 'WCAvatar.dart';
import 'TimeLine/TimeLine.dart';
class FindView extends StatefulWidget {
  @override
  _FindViewState createState() => new _FindViewState();
}

class _FindViewState extends State {
  @override
  Container _FindNormalCell(String iconName, String contentName,
      String timelinecontentName, Color color, double topY, double lineH) {
    return new Container(
      padding: EdgeInsets.only(top: topY),
      color: Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
      // height: 54.0 + topY + lineH ,
      child: new Column(
        children: <Widget>[
          Container(
              height: 54.0 + lineH,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  leftrow(iconName, contentName),
                  Container(
                    width: 80,
                    height: 100,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        timelinecontentName.length > 0
                            ? WCAvatar()
                            : Container(),
                        Image.asset(
                          "wechatassts/arrowOnclick_ico@2x.png", //arrow_icon
                          width: 20.0,
                          height: 20.0,
                        ),
                        Container(
                          width: 5.0,
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            height: lineH,
            child: new Row(
              children: <Widget>[
                Container(
                  width: 60,
                  color: Colors.white,
                ),
                Container(
                  color: Color.fromARGB(0x7d, 0xd9, 0xd9, 0xd9),
                  width: window.physicalSize.width / 3 - 60,
                )
              ],
            ),
            // padding: EdgeInsets.all(100),
          ),
        ],
      ),
    );
  }

  Container _FindTimeLineCell(String iconName, String contentName, Color color,
      double topY, double lineH) {
    return _FindNormalCell(
        iconName, contentName, 'images/a001.jpg', color, topY, lineH);
  }

  Container _FindCell(String iconName, String contentName, Color color,
      double topY, double lineH) {
    return _FindNormalCell(iconName, contentName, '', color, topY, lineH);
  }

  Row leftrow(String iconName, String contentName) {
    return new Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(width: 17),
          new Image.asset(
            iconName,
            height: 22.0,
            width: 22,
            // color: color,
          ),
          Container(width: 17),
          new Text(
            contentName,
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ]);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
        body: new ListView(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                print("点朋友圈Cell");
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> new TimeLinePage(),
                ));
              },
              child: _FindTimeLineCell("wechatassts/ff_IconShowAlbum@3x.png",
                  "朋友圈", Colors.red, 0.0, 0),
            ),

            new GestureDetector(
              onTap: () {
                print("点了扫一扫");
              },
              child: _FindCell("wechatassts/ff_IconQRCode@3x.png", "扫一扫",
                  Colors.red, 9.0, 0.5),
            ),

            _FindCell(
                "wechatassts/ff_IconShake@3x.png", "摇一摇", Colors.red, 0, 0),
            _FindCell("wechatassts/ff_IconBrowse1@3x.png", "看一看", Colors.red,
                9.0, 0.5),
            _FindCell(
                "wechatassts/ff_IconSearch1@3x.png", "搜一搜", Colors.red, 0, 0),
            _FindCell(
                "wechatassts/ff_IconNearby@3x.png", "附近的人", Colors.red, 9, 0.5),
            _FindCell(
                "wechatassts/ff_IconBottle@3x.png", "漂流瓶", Colors.red, 0, 0.5),
            _FindCell(
                "wechatassts/ff_IconQRCode@3x.png", "附近的餐厅", Colors.red, 0, 0),
            _FindCell(
                "wechatassts/ff_IconQRCode@3x.png", "购物", Colors.red, 9, 0.5),
            _FindCell("wechatassts/GameCenterH5GameMenuBtn@2x.png", "游戏",
                Colors.red, 0, 0),
            _FindCell("wechatassts/PaidDetail_MiniProgram@3x.png", "小程序",
                Colors.red, 9, 0),

            // _FindCell("wechatassts/ff_IconShowAlbum@3x.png", "朋友圈", Colors.red,
            // 0.0, 0),
            // _FindCell("wechatassts/ff_IconQRCode@3x.png", "扫一扫", Colors.red,
            //     9.0, 0.5),

            /*
          
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 50.0,
              child: new ListTile(
                leading: new Icon(Icons.star),
                title: new Text("看一看"),
              ),
              color: Colors.white,
            ),
            color: Colors.grey[850],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.search),
              title: new Text("搜一搜"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.people),
                title: new Text("附近的人"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.hourglass_empty),
              title: new Text("漂流瓶"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.shopping_cart),
                title: new Text("购物"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.games),
              title: new Text("游戏"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.apps),
                title: new Text("小程序"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          */
          ],
        ));
  }
}
