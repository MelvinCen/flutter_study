import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwiperState();
  }
}

class _SwiperState extends State<SwiperDemo> {
  List<Map> imgList = [
    {'url': 'http://img9.3lian.com/c1/vec2015/103/93.jpg'},
    {
      'url':
          'http://hbimg.b0.upaiyun.com/27e583280ffa98518dba90c40a171e4acd0a620125086-aCaoDR_fw658'
    },
    {'url': 'http://img9.3lian.com/c1/vec2015/103/93.jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图组件演示'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: imgList.length,
                //左右箭头
                pagination: new SwiperPagination(),
                //底部分页点
                control: new SwiperControl(),
                autoplay: true,
              ),
            ),
          ),
          Row(
            children: <Widget>[Text('文本')],
          )
        ],
      ),
    );
  }
}
