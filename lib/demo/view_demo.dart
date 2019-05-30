import 'package:flutter/material.dart';
import '../model/post.dart';


class ViewDemo extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {

    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget{

  Widget _gridItemBuilder (BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl, 
        fit:BoxFit.cover
      ),
     
    );

  }
  @override
  Widget build(BuildContext context) {
   
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: 
      // SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2, //交叉轴控件数量  
      //   crossAxisSpacing: 8.0, //控件间隔
      //   mainAxisSpacing: 8.0,        
      // ),
      SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0, //控件间隔
        mainAxisSpacing: 8.0,
      )
    );
  }
  
}


class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTitles(int length){
    return List.generate(length, (int index){
      return  Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "item $index",
            style: TextStyle(fontSize: 18.0,color: Colors.black),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,//交叉抽上显示内容的数量
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
     // scrollDirection: Axis.horizontal, //滚动方向
      children: _buildTitles(100),
      
    );
  }
  
}

class GridViewExtextDemo extends StatelessWidget{
  List<Widget> _buildTitles(int length){
    return List.generate(length, (int index){
      return  Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "item $index",
            style: TextStyle(fontSize: 18.0,color: Colors.black),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
     // scrollDirection: Axis.horizontal, //滚动方向 设置主轴
      children: _buildTitles(100),
      
    );
  }
  
}


class PageViewBuilderDemo extends StatelessWidget{

  Widget _pageItemBulder (BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
        ),

        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              Text(posts[index].author,style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBulder,
    );
  }




  
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return PageView(
      // pageSnapping: false, //滚动动画
      // reverse: true, //页面倒序
      scrollDirection: Axis.vertical,//滚动方向
      onPageChanged: (currentPage)=>debugPrint("page: $currentPage"),
      controller: PageController( //试图控制器
        initialPage: 0,//初始要显示的页面
        keepPage: false,//默认pageView会记住用户滚动到那个页面，不需要记住就设置成false
        viewportFraction: 0.85//页面占据屏幕的百分比，默认1.0
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