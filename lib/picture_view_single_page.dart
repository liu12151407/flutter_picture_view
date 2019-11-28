import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

/**
 * ***********************************************
 * 包路径：example.lib
 * 类描述：
 * 创建人：Liu Yinglong[PHONE：132****0095]
 * 创建时间：2019/11/28
 * 修改人：
 * 修改时间：2019/11/28
 * 修改备注：
 * ***********************************************
 */
class PictureViewSinglePage extends StatefulWidget {
  final picUrl;
  final contentBgColor;
  final title;

  PictureViewSinglePage(this.picUrl,
      {this.title = "图片预览", this.contentBgColor = Colors.black});

  @override
  _PictureViewSinglePageState createState() => _PictureViewSinglePageState();
}

class _PictureViewSinglePageState extends State<PictureViewSinglePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(color: widget.contentBgColor),
          minScale: 0.2,
          maxScale: 10.0,
          imageProvider: NetworkImage(widget.picUrl ?? ""),
        ),
      ),
    );
  }
}
