import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPictureView {
  static const MethodChannel _channel =
      const MethodChannel('flutter_picture_view');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
