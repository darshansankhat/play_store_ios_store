import 'package:flutter/material.dart';
import 'package:play_store_ios_store/Google_play_store/G_Provider_screen/G_Provider_screen.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Open_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Google_play_store/G_View_screen/Home_screen.dart';

void main() {
  runApp(
     Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => G_Provider_screen(),)
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
    ),
  );
}
