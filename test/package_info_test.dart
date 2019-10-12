import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info/package_info.dart';

void main() {
  const MethodChannel channel = MethodChannel('package_info');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
//    channel.setMockMethodCallHandler((MethodCall methodCall) async {
//      return '42';
//    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await PackageInfo.platformVersion, '42');
  });
}
