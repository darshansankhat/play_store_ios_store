import 'package:flutter/material.dart';
import 'package:play_store_ios_store/Google_play_store/G_Provider_screen/G_Provider_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  G_Provider_screen? providerF;
  G_Provider_screen? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<G_Provider_screen>(context, listen: false);
    providerT = Provider.of<G_Provider_screen>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: providerT!.screenList[providerT!.i],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          currentIndex: providerT!.i,
          onTap: (value) {
            providerF!.selectScreen(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports_outlined), label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: "Apps"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined), label: "Offers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: "Books"),
          ],
        ),
      ),
    );
  }
}
