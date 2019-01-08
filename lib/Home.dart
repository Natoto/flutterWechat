import 'package:flutter/material.dart';
import 'XKTabBar.dart';
class HomeView extends StatefulWidget{
  @override
  _HomeViewState createState() => new _HomeViewState();
}
class _HomeViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _buildListView(),
    );
  }
  ListView _buildListView(){
    return new ListView(
      children: <Widget>[
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/img.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("刘德华"),
          subtitle: new Text("今年的演唱会退票到账了吧？"),
          trailing: new Text("9:00"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/lebron.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("LebronJames"),
          subtitle: new Text("We will take over this game"),
          trailing: new Text("8:45"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/xk.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("范冰冰"),
          subtitle: new Text("帮我带饭啊，钱放你桌子上了"),
          trailing: new Text("6:00"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/a001.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("李晨"),
          subtitle: new Text("兄弟，出来跑步吧"),
          trailing: new Text("昨天"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/a002.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("迪丽热巴"),
          subtitle: new Text("打野，上没闪快来"),
          trailing: new Text("昨天"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/a003.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("Faker"),
          subtitle: new Text("看啥，代码写完了吗？"),
          trailing: new Text("上个月"),
        ),
        new ListTile(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context){
                      return new XKTabBar();
                    }
                )
            );
          },
          leading: new Image.asset("images/a004.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
          title: new Text("老板"),
          subtitle: new Text("【微信红包，大吉大利】"),
          trailing: new Text("那年今日"),
        ),
      ],
    );
  }
}