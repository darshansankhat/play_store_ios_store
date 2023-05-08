import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../G_Provider_screen/G_Provider_screen.dart';

class Apps_screen extends StatefulWidget {
  const Apps_screen({Key? key}) : super(key: key);

  @override
  State<Apps_screen> createState() => _Apps_screenState();
}

class _Apps_screenState extends State<Apps_screen> {

  G_Provider_screen? providerF;
  G_Provider_screen? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<G_Provider_screen>(context,listen: false);
    providerT=Provider.of<G_Provider_screen>(context,listen: true);

    return Scaffold(
      body: DefaultTabController(
        length: 6,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff303030),
            elevation: 1,
            shadowColor: Colors.white38,
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white10,
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.mic_none_sharp,
                    color: Colors.white,
                  ),
                  hintText: "Search apps & games",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.white60,
                  size: 30,
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 30,
                width: 30,
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.blue,
              isScrollable: true,
              tabs: [
                Tab(child: Center(child: Text("For you",style: TextStyle(fontSize: 18),),),),
                Tab(child: Center(child: Text("Top charts",style: TextStyle(fontSize: 18),),),),
                Tab(child: Center(child: Text("Kids",style: TextStyle(fontSize: 18),),),),
                Tab(child: Center(child: Text("Events",style: TextStyle(fontSize: 18),),),),
                Tab(child: Center(child: Text("Premium",style: TextStyle(fontSize: 18),),),),
                Tab(child: Center(child: Text("Categories",style: TextStyle(fontSize: 18),),),),
              ],
            ),
          ),
          body: ListView.builder(itemBuilder: (context, index) {
            return game(index);
          },itemCount: 10),
          ),
        ),
    );
  }
  Widget game(int index)
  {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Text("${index+1}"),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
                image: DecorationImage(image: AssetImage("${providerT!.topChartsList[index].img}"),fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${providerT!.topChartsList[index].name}",style: TextStyle(fontSize: 18,color: Colors.white),),
                Text("${providerT!.topChartsList[index].tag}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                Text("${providerT!.topChartsList[index].rat}",style: TextStyle(fontSize: 15,color: Colors.white54),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
