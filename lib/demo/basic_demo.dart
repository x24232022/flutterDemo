import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration( //容器背景设置
        image: DecorationImage(  //使用图片设置背景
          image: NetworkImage("http://clubimg.club.vmall.com/data/attachment/forum/201904/19/072347eaumvasbmf6ugayz.png"),
          alignment: Alignment.topCenter,//图片位置设置
          // repeat: ImageRepeat.noRepeat
          fit: BoxFit.cover,//设置填充方式
          colorFilter: ColorFilter.mode(//添加背板滤镜
            Colors.indigoAccent[400].withOpacity(0.5),//设置颜色和透明度
            BlendMode.hardLight,//滤镜混合模式
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white),     
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                // top: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3.0,
                //   style: BorderStyle.solid
                // ),
                // bottom: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3.0,
                //   style: BorderStyle.solid
                // )
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(//背景阴影
                  offset: Offset(0.0,16.0),//偏移位置
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,//阴影扩散大小，正数扩大，负数减小
                )
              ],
              shape: BoxShape.circle,//盒子形状rectangle 矩形，circle圆形 ,圆形的盒子不能使用borderRadius效果
              // gradient: RadialGradient( // 镜像渐变
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //      Color.fromRGBO(3, 28, 128, 1.0),
              //   ]

              // )
              gradient: LinearGradient(//横向渐变
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0)
              // )

            ),
          )
        ],
      ),
    );
  }
  
}


class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
        fontSize: 16.0
    );
    final _author = "李白";
    final _title = "将近酒";
    // TODO: implement build
    return Text(
      "《$_title》 ~ $_author 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。",
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,//最大行数
      overflow: TextOverflow.ellipsis,//多余部分省略
    );
  }

}

//让一行中的文字显示不同的样式
class TextSpanDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: "哈哈哈哈",
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
      children: [
        TextSpan(
          text: "略略略",
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.grey
          )
        ),
      ]
      ),
    );
  }
  
}
