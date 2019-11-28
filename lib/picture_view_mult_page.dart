import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

/**
 * ***********************************************
 * 包路径：example.lib
 * 类描述：多图预览
 * 创建人：Liu Yinglong[PHONE：132****0095]
 * 创建时间：2019/11/28
 * 修改人：
 * 修改时间：2019/11/28
 * 修改备注：
 * ***********************************************
 */
class PictureViewMultPage extends StatefulWidget {
  List<String> picUrls;
  final contentBgColor;

  PictureViewMultPage(this.picUrls, {this.contentBgColor = Colors.black});

  @override
  _PictureViewMultPageState createState() => _PictureViewMultPageState();
}

class _PictureViewMultPageState extends State<PictureViewMultPage> {
  bool verticalGallery = false;
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${selectIndex + 1}/${widget.picUrls.length}"),
        centerTitle: true,
      ),
      body: Container(
        child: PhotoViewGallery.builder(
          backgroundDecoration: BoxDecoration(color: widget.contentBgColor),
          scrollPhysics: const BouncingScrollPhysics(),
          itemCount: widget.picUrls.length,
          builder: (ctx, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(widget.picUrls[index]),
            );
          },
          onPageChanged: (index) {
            setState(() {
              selectIndex = index;
            });
          },
        ),
      ),
    );
  }
}
