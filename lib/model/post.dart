class Post {
  //构造函数
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}
final List<Post> posts =[
  Post(
    title: "列表1",
    author: "作者1",
    imageUrl: "http://i0.hdslb.com/bfs/article/d08d3949ecb71f9ab7d35b9ad2ec2d3426ef5a53.jpg"
  ),
  Post(
    title: "列表2",
    author: "作者2",
    imageUrl: "http://i0.hdslb.com/bfs/article/210653cddb5404d31b8aa34d524447df75de3b36.jpg"
  ),
  Post(
    title: "列表3",
    author: "作者3",
    imageUrl: "http://clubimg.club.vmall.com/data/attachment/forum/201904/19/072347eaumvasbmf6ugayz.png"
  ),
  Post(
    title: "列表4",
    author: "作者4",
    imageUrl: "http://i0.hdslb.com/bfs/article/cfc269a0f43becbdde3e8766887763f393dacad2.png"
  ),
  Post(
    title: "列表5",
    author: "作者5",
    imageUrl: "http://i0.hdslb.com/bfs/article/43d728f77e3df78155ed81c95efc49f0ef34fd6a.jpg"
  ),

  Post(
    title: "列表6",
    author: "作者1",
    imageUrl: "http://i0.hdslb.com/bfs/article/d08d3949ecb71f9ab7d35b9ad2ec2d3426ef5a53.jpg"
  ),
  Post(
    title: "列表7",
    author: "作者2",
    imageUrl: "http://i0.hdslb.com/bfs/article/210653cddb5404d31b8aa34d524447df75de3b36.jpg"
  ),
  Post(
    title: "列表8",
    author: "作者3",
    imageUrl: "http://clubimg.club.vmall.com/data/attachment/forum/201904/19/072347eaumvasbmf6ugayz.png"
  ),
  Post(
    title: "列表9",
    author: "作者4",
    imageUrl: "http://i0.hdslb.com/bfs/article/cfc269a0f43becbdde3e8766887763f393dacad2.png"
  ),
  Post(
    title: "列表10",
    author: "作者5",
    imageUrl: "http://i0.hdslb.com/bfs/article/43d728f77e3df78155ed81c95efc49f0ef34fd6a.jpg"
  ),
];