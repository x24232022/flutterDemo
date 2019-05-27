import 'package:flutter/material.dart';
import './bottom_navigation_bar_demo.dart';
import 'listView_demo.dart';
import 'basic_demo.dart';
class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(//选项卡控制器
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //bar左上角的导航按钮
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () =>
          //       debugPrint("Navigation button is pressed"), //点击按钮是触发的方法
          // ),
          title: Text("listViewDemo"),
          //右上角的菜单按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation',
              onPressed: () =>
                  debugPrint("Seacher button is pressed"), //点击按钮是触发的方法
            )
          ],
          elevation: 0.0,
          bottom: TabBar(//tab选项卡
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.black54,//选项卡下面横线颜色
          indicatorSize: TabBarIndicatorSize.label,//选项卡下面横线长度
          indicatorWeight: 1.0,//选项卡下面横线高度
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike))
            ],
          ),
        ),
        body: TabBarView(//选项页面
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.change_history,size: 128.0, color: Colors.black12,),
            BasicDemo(),
            Icon(Icons.directions_bike,size: 128.0, color: Colors.black12,)
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text("header".toUpperCase()),//.toUpperCase把文字变成大写的
              //   decoration: BoxDecoration(//设置抽屉头部的背景颜色
              //     color: Colors.grey[100]
              //   ),

              // ),
              UserAccountsDrawerHeader( //用户信息组件
                accountName: Text('谢臣',style: TextStyle(fontWeight: FontWeight.bold)), // 用户名
                accountEmail: Text("xc18804005905@163.com"),//用户邮箱
                currentAccountPicture: CircleAvatar( //用户圆形头像
                  backgroundImage: NetworkImage("http://b-ssl.duitang.com/uploads/item/201609/26/20160926203611_HXQxk.jpeg"),
                ),
                decoration: BoxDecoration(//用户栏设置背景图片
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage("http://clubimg.club.vmall.com/data/attachment/forum/201904/19/072347eaumvasbmf6ugayz.png"),
                    fit:BoxFit.cover,//图片填充方式 cover拉伸
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                    )
                  )
                ),
              ),
              ListTile(//抽屉列表
                title: Text("Messages",textAlign:TextAlign.right),
                trailing: Icon(Icons.message,color: Colors.black12,size: 22.0),//列表图标
                onTap: () => Navigator.pop(context),
              ),
              ListTile(//抽屉列表
                title: Text("Favorite",textAlign:TextAlign.right),
                trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0),//列表图标
                onTap: () => Navigator.pop(context),

              ),
              ListTile(//抽屉列表
                title: Text("Settings",textAlign:TextAlign.right),
                trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0),//列表图标
                onTap: () => Navigator.pop(context),

              ),
            ],
          ),
        ),
        bottomNavigationBar:BottomNavigationBarDemo(),
      ),
    );
  }
}


