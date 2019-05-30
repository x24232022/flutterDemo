import 'package:flutter/material.dart';
import '../model/post.dart';
class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          
          SliverAppBar(
            
            //title: Text("哈哈哈哈哈"),
            //pinned: true, //固定appbar不让伸展
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle:true,//title文字居中
              title: Text(
                "6666的伸缩Bar".toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue
                ),

              ),
              background: Image.network(
                "http://pic40.nipic.com/20140409/13684040_142108165151_2.jpg",
                fit: BoxFit.cover,//拉伸
              ),
            ),

          ),

          SliverSafeArea( //针对性刘海屏之类的设备，是内容显示在安全区域
            sliver: SliverPadding(//在格子的周围添加边距
            padding:EdgeInsets.all(8.0),
            sliver: SliverGridDemo(),
          ),
          )
        ],
      ),
    );
  }

}


class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//设置交叉轴上的空间
              crossAxisCount: 2,//数量
              crossAxisSpacing: 8.0,//间距
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.8
        
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context , int index){
                return Container(
                  child: Image.network(posts[index].imageUrl,fit:BoxFit.cover),
                  
                );
              },
              childCount: posts.length
            ),
          );
  }
  
}