import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wsy_player_platform_interface.dart';

/// An implementation of [WsyPlayerPlatform] that uses method channels.
class MethodChannelWsyPlayer extends WsyPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wsy_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
