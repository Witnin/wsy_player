#import "WsyPlayerPlugin.h"
#if __has_include(<wsy_player/wsy_player-Swift.h>)
#import <wsy_player/wsy_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wsy_player-Swift.h"
#endif

@implementation WsyPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWsyPlayerPlugin registerWithRegistrar:registrar];
}
@end
