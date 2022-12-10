// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:connectivity_plus_web/connectivity_plus_web.dart';
import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:network_info_plus_web/network_info_plus_web.dart';
import 'package:printing/printing_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  ConnectivityPlusPlugin.registerWith(registrar);
  FluttertoastWebPlugin.registerWith(registrar);
  NetworkInfoPlusPlugin.registerWith(registrar);
  PrintingPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
