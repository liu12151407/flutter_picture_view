import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_picture_view/picture_view_single_page.dart';
import "package:flutter_picture_view/picture_view_mult_page.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("简单图片预览"),
              onPressed: () {
                var picUrl =
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574937225930&di=f3ef95b2517d44ef4e603e7980d959a3&imgtype=0&src=http%3A%2F%2Fwww.yosoar110.com%2FupLoad%2Fnews%2Fmonth_1508%2F201508191107552885.jpg";
                //导航到新路由
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PictureViewSinglePage(
                    picUrl,
                    contentBgColor: Colors.white,
                  );
                }));
              },
            ),
            RaisedButton(
              child: Text("多图片预览"),
              onPressed: () {
                List<String> picUrls = List();
                picUrls.add(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574939079429&di=8b43fcdf8d3b6f117658105d4eff2fe0&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170802%2F1a0262813af546b982f485f8bb414195_th.jpg");
                picUrls.add(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574939091914&di=a2323f20c47bd2c0aea41357f87813d3&imgtype=0&src=http%3A%2F%2Fe0.ifengimg.com%2F04%2F2018%2F1205%2FB56D39610FA63C93EFCCCCC41BD1306D88B1101C_size25_w600_h300.jpeg");
                picUrls.add(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574939113686&di=f230ab42729bdd57c876c4bfa3e5f5fa&imgtype=0&src=http%3A%2F%2Fpicture01.52hrttpic.com%2Fimage%2FinfoImage%2F201903%2F18%2FG1552634874240.jpeg%3F640x427");
                picUrls.add(
                    "https://n.sinaimg.cn/tech/transform/760/w500h260/20191127/3794-iixntzz6766792.gif");
                //导航到新路由
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PictureViewMultPage(
                    picUrls,
                    contentBgColor: Colors.white,
                  );
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
