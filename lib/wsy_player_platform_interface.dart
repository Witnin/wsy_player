import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wsy_player_method_channel.dart';

abstract class WsyPlayerPlatform extends PlatformInterface {
  /// Constructs a WsyPlayerPlatform.
  WsyPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static WsyPlayerPlatform _instance = MethodChannelWsyPlayer();

  /// The default instance of [WsyPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelWsyPlayer].
  static WsyPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WsyPlayerPlatform] when
  /// they register themselves.
  static set instance(WsyPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
