import 'dart:async';

import 'package:flutter/services.dart';

class InstallPrompt {
  static const MethodChannel _channel = const MethodChannel('installprompt');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void showInstallPrompt({String? referrer}) {
    _channel.invokeMethod('showInstallPrompt', {"referrer": referrer ?? null});
  }
}
