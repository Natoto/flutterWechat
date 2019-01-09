import 'package:flutter/material.dart';
class FindView extends StatefulWidget{
  @override
  _FindViewState createState() => new _FindViewState();
}
class _FindViewState extends State{
  @override
  Container _FindCell(String iconName,String contentName,Color color,double topY) {
    return new Container(
    padding:EdgeInsets.only(top:topY),
    child: new Container(
    height: 56.0,
    child: new ListTile(
    leading: new Image.asset(
                iconName,
                height: 40,
                width: 40,
               // color: color,
            ),
    title: new Text(contentName),
    ),
    color: Colors.white,
    ),
    color: Colors.grey[200],
    );
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.green,
      body: new ListView(
          children: <Widget>[
          _FindCell("wechatassts/ff_IconShowAlbum@3x.png", "朋友圈", Colors.red,0.0),
          
          _FindCell("wechatassts/ff_IconQRCode@3x.png", "扫一扫", Colors.red,20.0),
          _FindCell("wechatassts/ff_IconShake@3x.png", "摇一摇", Colors.red,0),

          _FindCell("wechatassts/ff_IconBrowse1@3x.png", "看一看", Colors.red,20.0),
          _FindCell("wechatassts/ff_IconSearch1@3x.png", "搜一搜", Colors.red,0),

          _FindCell("wechatassts/ff_IconNearby@3x.png", "附近的人", Colors.red,20),
          _FindCell("wechatassts/ff_IconBottle@3x.png", "漂流瓶", Colors.red,0),
          _FindCell("wechatassts/ff_IconQRCode@3x.png", "附近的餐厅", Colors.red,0),

          _FindCell("wechatassts/ff_IconQRCode@3x.png", "购物", Colors.red,20.0),
          _FindCell("wechatassts/GameCenterH5GameMenuBtn@2x.png", "游戏", Colors.red,0),

          _FindCell("wechatassts/PaidDetail_MiniProgram@3x.png", "小程序", Colors.red,20.0),

          /*
          new Container(
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
      )
    );
  }
}