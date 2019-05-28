import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    //     IconBadge(
    //       Icons.pool,
    //       size: 64.0,
    //     )
    //   ],
    // );
    return Container(
      child: Column(
        // Row内部图标为横向排列 Column为纵项排列
        mainAxisAlignment: MainAxisAlignment
            .center, //设置小部件在主轴上的对齐方式,将主轴上多余的空间分配到控件周围spaceAround，分配到控件之间spaceBetween,平均分配到控件之间spaceEvenly
        //crossAxisAlignment: CrossAxisAlignment.stretch,//与主轴垂直的交叉轴 ,在交叉轴上拉伸对齐stretch,
        children: <Widget>[
          // IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access,size: 64.0,),
          // IconBadge(Icons.airplanemode_active),
          ConstrainedBox( // 限制子部件大小的布局
            constraints:BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0
            ) ,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

class AspecetRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0 / 9.0, //设置AspectRatio容器的宽高比例
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      //放多个小部件的布局 ，部件会叠加到左上角，取最大的部件为底板，
      alignment: Alignment.topLeft, //设置没有对齐的组件相对于底板的位置
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0, 0.0), //设置部件在BOX中的位置，中心坐标0.0,0.0
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                // borderRadius: BorderRadius.circular(8.0)
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(8, 74, 255, 1.0)
                ])),
            child: Icon(
              Icons.pool,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        Positioned(
            right: 20.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 20.0,
            top: 120.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 70.0,
            top: 180.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 30.0,
            top: 230.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 90.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 4.0,
            top: -4.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
      ],
    );
  }
}
