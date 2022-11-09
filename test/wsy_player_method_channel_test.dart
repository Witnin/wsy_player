import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wsy_player/wsy_player_method_channel.dart';

void main() {
  MethodChannelWsyPlayer platform = MethodChannelWsyPlayer();
  const MethodChannel channel = MethodChannel('wsy_player');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
