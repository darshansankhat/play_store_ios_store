import 'package:flutter/cupertino.dart';
import 'package:play_store_ios_store/Ios_app_store/I_Provider_screen/I_Provider_class.dart';
import 'package:provider/provider.dart';

class Tab_bar_screen extends StatefulWidget {
  const Tab_bar_screen({Key? key}) : super(key: key);

  @override
  State<Tab_bar_screen> createState() => _Tab_bar_screenState();
}

class _Tab_bar_screenState extends State<Tab_bar_screen> {

  I_provider_screen? providerF;
  I_provider_screen? providerT;

  @override
  Widget build(BuildContext context) {

    providerT=Provider.of<I_provider_screen>(context,listen: true);
    providerF=Provider.of<I_provider_screen>(context,listen: false);

    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return providerT!.screenList[providerT!.i];
      },
      tabBar: CupertinoTabBar(
        currentIndex: providerT!.i,
        onTap: (value) {
          providerT!.selact_screen(value);
        },
        items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.today), label: "Today"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill), label: "Games"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.layers_alt_fill), label: "Apps"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_arrow_down_fill), label: "Updates"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: "Search"),
      ],),
    );
  }
}
