import 'package:flutter_test/flutter_test.dart';
import 'package:wsy_player/wsy_player.dart';
import 'package:wsy_player/wsy_player_platform_interface.dart';
import 'package:wsy_player/wsy_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWsyPlayerPlatform
    with MockPlatformInterfaceMixin
    implements WsyPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WsyPlayerPlatform initialPlatform = WsyPlayerPlatform.instance;

  test('$MethodChannelWsyPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWsyPlayer>());
  });

  test('getPlatformVersion', () async {
    WsyPlayer wsyPlayerPlugin = WsyPlayer();
    MockWsyPlayerPlatform fakePlatform = MockWsyPlayerPlatform();
    WsyPlayerPlatform.instance = fakePlatform;


  });
}
