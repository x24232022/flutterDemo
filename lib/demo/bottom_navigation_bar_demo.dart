import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _BottomNavigationBarDemoState();
  }
}
//setState是StatefulWidget类中的方法，需要继承后重写
class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHander (int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        //底部导航栏
        type: BottomNavigationBarType.fixed, //设置底部导航栏的样式
        fixedColor: Colors.black, //设置导航栏激活时的颜色
        currentIndex: _currentIndex, //当前激活按钮的索引值
        onTap: _onTapHander,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('history')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('list')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('MY'))
        ]);
  }
}
