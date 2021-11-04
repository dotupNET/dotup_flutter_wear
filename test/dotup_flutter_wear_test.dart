// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:dotup_flutter_wear/dotup_flutter_wear.dart';

// void main() {
//   const MethodChannel channel = MethodChannel('dotup_flutter_wear');

//   TestWidgetsFlutterBinding.ensureInitialized();

//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });

//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });

//   test('getPlatformVersion', () async {
//     expect(await DotupFlutterWear.platformVersion, '42');
//   });
// }
