import 'package:flutter/material.dart';
import 'package:play_store_ios_store/Google_play_store/G_Provider_screen/G_Provider_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Game_screen extends StatefulWidget {
  const Game_screen({Key? key}) : super(key: key);

  @override
  State<Game_screen> createState() => _Game_screenState();
}

class _Game_screenState extends State<Game_screen> {

  G_Provider_screen? providerF;
  G_Provider_screen? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<G_Provider_screen>(context,listen: false);
    providerT=Provider.of<G_Provider_screen>(context,listen: true);

    return DefaultTabController(
      length: 6,
      initialIndex: 0,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //offline game
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Offline games",style: TextStyle(fontSize: 20,color: Colors.white70),),
                    Icon(Icons.arrow_forward,size: 25,color: Colors.white70,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 30.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return InkWell(onTap: () {
                      Navigator.pushNamed(context, "open");
                    },child: o_Games(index));
                  },itemCount: 3,),
                ),
              ),
              //suggested game
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Suggested for you",style: TextStyle(fontSize: 20,color: Colors.white70),),
                    Icon(Icons.arrow_forward,size: 25,color: Colors.white70,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 30.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "open");
                      },child: s_Games(index));
                    },itemCount: 3,),
                ),
              ),
              //stylized game
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Stylized games",style: TextStyle(fontSize: 20,color: Colors.white70),),
                    Icon(Icons.arrow_forward,size: 25,color: Colors.white70,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 30.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "open");
                      },child: ss_Games(index));
                    },itemCount: 3,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget o_Games(int index)
  {
    return Container(
      height: 30.h,
      width: 70.w,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 17.h,
            width: 70.w,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.blue,
             image: DecorationImage(image: AssetImage("${providerT!.o_GameList[index].topimg}"),fit: BoxFit.cover),
           ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.h,
                width: 18.w,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage("${providerT!.o_GameList[index].img}"),fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${providerT!.o_GameList[index].name}",style: TextStyle(fontSize: 18,color: Colors.white),),
                    SizedBox(height: 5),
                    Text("${providerT!.o_GameList[index].tag}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                    SizedBox(height: 5),
                    Text("${providerT!.o_GameList[index].rat}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget s_Games(int index)
  {
    return Container(
      height: 30.h,
      width: 70.w,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 17.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              image: DecorationImage(image: AssetImage("${providerT!.s_GameList[index].topimg}"),fit: BoxFit.cover),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.h,
                width: 18.w,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage("${providerT!.s_GameList[index].img}"),fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${providerT!.s_GameList[index].name}",style: TextStyle(fontSize: 18,color: Colors.white),),
                    SizedBox(height: 5),
                    Text("${providerT!.s_GameList[index].tag}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                    SizedBox(height: 5),
                    Text("${providerT!.s_GameList[index].rat}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget ss_Games(int index)
  {
    return Container(
      height: 30.h,
      width: 70.w,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 17.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              image: DecorationImage(image: AssetImage("${providerT!.ss_GameList[index].topimg}"),fit: BoxFit.cover),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.h,
                width: 18.w,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage("${providerT!.ss_GameList[index].img}"),fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${providerT!.ss_GameList[index].name}",style: TextStyle(fontSize: 18,color: Colors.white),),
                    SizedBox(height: 5),
                    Text("${providerT!.ss_GameList[index].tag}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                    SizedBox(height: 5),
                    Text("${providerT!.ss_GameList[index].rat}",style: TextStyle(fontSize: 15,color: Colors.white54),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}
