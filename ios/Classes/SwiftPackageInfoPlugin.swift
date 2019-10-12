import Flutter
import UIKit

public class SwiftPackageInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "package_info", binaryMessenger: registrar.messenger())
    let instance = SwiftPackageInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
		if (call?.method == "getAll") {
            result([
            "appName": Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") ?? NSNull(),
            "packageName": Bundle.main.bundleIdentifier ?? NSNull(),
            "version": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") ?? NSNull(),
            "buildNumber": Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") ?? NSNull()
            ])
        } else {
            result(FlutterMethodNotImplemented)
        }
  }
}
