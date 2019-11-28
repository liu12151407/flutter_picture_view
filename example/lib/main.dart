import 'package:flutter/material.dart';
import 'package:flutter_picture_view/picture_view_single_page.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
