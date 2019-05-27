import 'package:flutter/material.dart';
import 'demo/home_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,//取消右上角debug标志
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//按下选项卡时的颜色
        splashColor: Colors.white70,//按下选项卡时水波纹样式的颜色
      ),
    );
  }

}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("haha"),
//           elevation: 30.0, //这只bar和内容区的阴影宽度
//         ),
//         body: Hello(),
//       ),
//       theme: ThemeData( //设置主题
//         primarySwatch: Colors.yellow //主题颜色
//       ),
//     );
//   }
// }



// class Hello extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
 
//     return Center(
//       child: Text(
//         "hello",
//         textDirection: TextDirection.ltr,//文字排列方式从左到右
//         style: TextStyle(
//           fontSize: 40.0,
//           fontWeight: FontWeight.bold,
//           color: Colors.black38
//         ),
//       ),
//     );
//   }

// }



