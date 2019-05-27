import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(//选项卡控制器
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //bar左上角的导航按钮
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () =>
                debugPrint("Navigation button is pressed"), //点击按钮是触发的方法
          ),
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
            Icon(Icons.local_florist,size: 128.0, color: Colors.black12,),
            Icon(Icons.change_history,size: 128.0, color: Colors.black12,),
            Icon(Icons.directions_bike,size: 128.0, color: Colors.black12,)
          ],
        ),
      ),
    );
  }
}
