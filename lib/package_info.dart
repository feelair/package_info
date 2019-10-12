import 'dart:async';

import 'package:flutter/services.dart';

class PackageInfo {
  static const MethodChannel _channel =
      const MethodChannel('package_info');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
