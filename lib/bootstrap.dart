import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:projectsetup/app.dart';
import 'package:projectsetup/core/di/injector.dart';

Future<void> bootstrap({required Function() initEnv}) async {
  final WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.initialize();

  // FlutterNativeSplash.preserve(widgetsBinding: binding);

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp]);

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  ///Creates and allocates memory for the image cache
  ///ImageCacheService.initCacheSize();

  // Initialize SharedPrefs
  // await SharedPrefs.getSharedPreference(checkReload: false);

  // if (Platform.isIOS) {
  //   await EbPurchaseWrapper.enableStoreKit1();
  // }

  //Initialize Envs
  initEnv();

  // Bloc state observer
  // if (kDebugMode) {
  //   Bloc.observer = BlocObserverHelper();
  // }

  await configureInjection();

  // Initialize firebase messaging listeners
  // await PushNotificationService.initListeners();

  // Runs error on own error zone
  runApp(App());
}
