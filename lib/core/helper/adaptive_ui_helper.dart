import 'package:flutter/material.dart';
import 'package:projectsetup/core/services/app_device_info.dart';

class AdaptiveUIHelper {
  static bool _isTabletOrIpad = false;

  static void initDevice(BuildContext context) =>
      _isTabletOrIpad = AppDeviceInfoService.instance.isTabletOrIpad(context);

  static bool get isTabletOrIpad => _isTabletOrIpad;
}
