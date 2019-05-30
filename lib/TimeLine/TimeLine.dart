import 'package:flutter/material.dart';
import 'package:flutter_wechat/WCAvatar.dart';

class TimeLinePage extends StatefulWidget {
  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  List showList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('朋友圈')),
      body: ListView.builder(
        itemCount: showList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      WCAvatar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //昵称
                            child: Text(
                              '佳怡.Y',
                              style: TextStyle(
                                  color: Color.fromARGB(0xff, 26, 61, 117),
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            //内容
                            width: MediaQuery.of(context).size.width - 70.0,
//                          height: 50.0,
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              '两万块，厉害哦，还有价格清单，动心，贴心还有价格清单，动心，贴心还有价格清单，动心，贴心',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            //链接
                            width: MediaQuery.of(context).size.width - 70.0,
                            height: 50.0,
                            color: Colors.black12,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset('images/a002.jpg'),
                                ),
                                Container(
//                                  padding: EdgeInsets.only(left: 5.0),
                                  width: MediaQuery.of(context).size.width - 120.0,
                                  child: Text('改造家|太牛了！2万块，15天，把广州老房变身文艺新家'),
                                )

                              ],
                            ),
                          ),
                          Padding(
                            //昵称
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              '5分钟前',
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                height: 1,
                color: Colors.black12,
              )
            ],
          );
        },
      ),
    );
  }
}
