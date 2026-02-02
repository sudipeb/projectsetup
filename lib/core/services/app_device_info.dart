import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum DeviceType { phone, tablet, unknown }

class AppDeviceInfoService {
  AppDeviceInfoService._();

  factory AppDeviceInfoService() => _instance ??= AppDeviceInfoService._();

  static AppDeviceInfoService? _instance;

  /// The instance of the [AppDeviceInfoService] to use.
  static AppDeviceInfoService get instance => _getOrCreateInstance();

  static AppDeviceInfoService _getOrCreateInstance() {
    if (_instance != null) {
      return _instance!;
    }
    return _instance = AppDeviceInfoService._();
  }

  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<bool> isBelowAndroid12() async {
    if (Platform.isAndroid) {
      final AndroidDeviceInfo deviceInfo = await _deviceInfo.androidInfo;
      return deviceInfo.version.sdkInt < 31;
    }
    return true;
  }

  Future<String> get deviceId async {
    if (isAndroid) {
      return _deviceInfo.androidInfo.then((AndroidDeviceInfo value) => value.id);
    }
    return _deviceInfo.iosInfo.then((IosDeviceInfo value) => value.identifierForVendor ?? 'n/a');
  }

  Future<String> get packageName => PackageInfo.fromPlatform().then((PackageInfo value) => value.packageName);

  bool get isIos => Platform.isIOS;

  bool get isAndroid => Platform.isAndroid;

  /// Returns DeviceType based on screen size and platform
  DeviceType _getDeviceType(BuildContext context) {
    if (isAndroid || isIos) {
      final Size size = MediaQuery.sizeOf(context);
      final double diagonal = sqrt(size.width * size.width + size.height * size.height);

      // Logical pixel threshold for tablets
      if (diagonal > 1100) {
        return DeviceType.tablet;
      } else {
        return DeviceType.phone;
      }
    }

    return DeviceType.unknown;
  }

  /// iOS-specific check for iPad vs iPhone
  Future<DeviceType> getIosDeviceType() async {
    if (!isIos) {
      return DeviceType.unknown;
    }

    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    final String model = iosInfo.model.toLowerCase();
    if (model.contains('ipad')) {
      return DeviceType.tablet;
    } else if (model.contains('iphone')) {
      return DeviceType.phone;
    }
    return DeviceType.unknown;
  }

  /// Combined method: uses iOS model check, Android uses screen size
  Future<DeviceType> getDeviceTypeSmart(BuildContext context) async {
    if (isIos) {
      return getIosDeviceType();
    } else {
      return _getDeviceType(context);
    }
  }

  bool isTabletOrIpad(BuildContext context) {
    return _getDeviceType(context) == DeviceType.tablet;
  }

  bool isPhone(BuildContext context) {
    return _getDeviceType(context) == DeviceType.phone;
  }
}
