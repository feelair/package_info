#import "PackageInfoPlugin.h"
#import <package_info/package_info-Swift.h>

@implementation PackageInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPackageInfoPlugin registerWithRegistrar:registrar];
}
@end
