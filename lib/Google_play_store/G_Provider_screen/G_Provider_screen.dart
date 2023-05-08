import 'package:flutter/cupertino.dart';
import 'package:play_store_ios_store/Google_play_store/G_Model_class/Model_class.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Apps_screen.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Books_screen.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Games_screen.dart';
import 'package:play_store_ios_store/Google_play_store/G_View_screen/Movi&TV_screen.dart';

class G_Provider_screen extends ChangeNotifier
{
  int i=0;

  List screenList=[
    Game_screen(),
    Apps_screen(),
    Movi_TV_screen(),
    Books_screen(),
  ];

  void selectScreen(int value)
  {
    i=value;

    notifyListeners();
  }

  List<gameModel> o_GameList=[
    gameModel(topimg: "assets/image/o_image/t1.jpg",img: "assets/image/o_image/l1.jpg",name: "Hill Climb Racing",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/o_image/t2.jpg",img: "assets/image/o_image/l2.jpg",name: "My Talking Tom",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/o_image/t3.jpg",img: "assets/image/o_image/l3.jpg",name: "8 Ball Pool",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
  ];

  List<gameModel> s_GameList=[
    gameModel(topimg: "assets/image/s_image/t4.jpg",img: "assets/image/s_image/l4.jpg",name: "Free Fire",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/s_image/t5.jpg",img: "assets/image/s_image/l5.jpg",name: "B B Racing",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/s_image/t6.jpg",img: "assets/image/s_image/l6.jpg",name: "1 2 3 4 Player Game",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
  ];

  List<gameModel> ss_GameList=[
    gameModel(topimg: "assets/image/ss_image/t7.jpg",img: "assets/image/ss_image/l7.jpg",name: "Case of Clan",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/ss_image/t8.jpg",img: "assets/image/ss_image/l8.jpg",name: "Zombie Catcher",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(topimg: "assets/image/ss_image/t9.jpg",img: "assets/image/ss_image/l9.jpg",name: "Roobary BOB",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
  ];

  List<gameModel> topChartsList=[
    gameModel(img: "assets/image/o_image/l1.jpg",name: "Case of Clan",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/o_image/l2.jpg",name: "Zombie Catcher",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/o_image/l3.jpg",name: "Roobary BOB",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/s_image/l4.jpg",name: "1 2 3 4 Player Game",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/s_image/l5.jpg",name: "B B Racing",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/s_image/l6.jpg",name: "Free Fire",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/ss_image/l7.jpg",name: "8 Ball Pool",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/ss_image/l8.jpg",name: "My Talking Tom",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/ss_image/l9.jpg",name: "Hill Climb Racing",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
    gameModel(img: "assets/image/o_image/l1.jpg",name: "Roobary BOB",tag: "All Best games",rat: "4.9 ⭐  105 MB",),
  ];
}