import 'package:flutter/cupertino.dart';
import 'package:play_store_ios_store/Ios_app_store/I_View_screen/Tab_bar_screens/Gamesh_screen.dart';
import 'package:play_store_ios_store/Ios_app_store/I_View_screen/Tab_bar_screens/Search_screen.dart';
import 'package:play_store_ios_store/Ios_app_store/I_View_screen/Tab_bar_screens/Today_screen.dart';
import 'package:play_store_ios_store/Ios_app_store/I_View_screen/Tab_bar_screens/Updets_screen.dart';

import '../I_View_screen/Tab_bar_screens/I_Apps_screen.dart';

class I_provider_screen extends ChangeNotifier
{
  int i=0;

  List screenList=[
    Today_screen(),
    Games_screen(),
    I_Apps_screen(),
    Updets_screen(),
    Search_screen(),
  ];

  void selact_screen(int value)
  {
    i=value;

    notifyListeners();
  }
}