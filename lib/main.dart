import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:play_store_ios_store/Google_play_store/G_Provider_screen/G_Provider_screen.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Open_screen.dart';
import 'package:play_store_ios_store/Ios_app_store/I_Provider_screen/I_Provider_class.dart';
import 'package:play_store_ios_store/Ios_app_store/I_View_screen/Tab_bar_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Google_play_store/G_View_screen/Home_screen.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => DevicePreview(
        builder: (context) => Platform.isAndroid
            ? MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                    create: (context) => I_provider_screen(),
                  ),
                ],
                child: CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  routes: {
                    "/": (p0) => Tab_bar_screen(),
                  },
                ),
              )
            : MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                    create: (context) => G_Provider_screen(),
                  )
                ],
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  routes: {
                    "/": (context) => Home_screen(),
                    "open": (context) => open_screen(),
                  },
                  theme: ThemeData.dark(),
                ),
              ),
        enabled: !kReleaseMode,
      ),
    ),
  );
}
