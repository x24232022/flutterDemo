import 'package:flutter/material.dart';



class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return PageViewDemo();
  }
  
}


class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false, //滚动动画
      // reverse: true, //页面倒序
      scrollDirection: Axis.vertical,//滚动方向
      onPageChanged: (currentPage)=>debugPrint("page: $currentPage"),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.85//页面占据屏幕的百分比
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "one",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "two",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "three",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        )
      ],
    );
  }
  
}