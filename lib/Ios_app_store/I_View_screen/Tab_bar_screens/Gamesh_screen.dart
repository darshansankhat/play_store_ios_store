import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Games_screen extends StatefulWidget {
  const Games_screen({Key? key}) : super(key: key);

  @override
  State<Games_screen> createState() => _Games_screenState();
}

class _Games_screenState extends State<Games_screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Games",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: CupertinoColors.black),
                  ),
                  //image
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CupertinoColors.activeBlue,
                    ),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5LL3IcidnkmpVbjmmL93gsmv-pIlTpMXNVQ&usqp=CAU",
                        fit: BoxFit.fill,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: CupertinoColors.black.withOpacity(0.4),
                height: 1,
              ),
              //game
              SizedBox(height: 10),
              Text(
                "NEW GAME",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
              Text(
                "Free Fire",
                style: TextStyle(color: CupertinoColors.black, fontSize: 25),
              ),
              Text(
                "Four vs Four Battle Game",
                style: TextStyle(
                    color: CupertinoColors.black.withOpacity(0.5),
                    fontSize: 25),
              ),
              //mage
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    games("assets/image/I_image/g1.jpg"),
                    games("assets/image/I_image/g2.jpg"),
                    games("assets/image/I_image/g3.jpg"),
                    games("assets/image/I_image/g4.jpg"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: CupertinoColors.black.withOpacity(0.4),
                height: 1,
              ),
              //text
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover AR Gaming",
                    style: TextStyle(
                        fontSize: 25,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20, color: CupertinoColors.activeBlue),
                  )
                ],
              ),
              //gems
              SizedBox(height: 10),
              games1("assets/image/I_image/gg1.jpg","Crazy Farm"),
              games1("assets/image/I_image/gg2.jpg","Pokemon"),
              games1("assets/image/I_image/gg3.jpg","Angry Birds"),
              games1("assets/image/I_image/gg4.jpg","Word Game"),
            ],
          ),
        ),
      ),
    );
  }

  Widget games(String data) {
    return Container(
      height: 25.h,
      width: 80.w,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CupertinoColors.black,
          image:
              DecorationImage(image: AssetImage("$data"), fit: BoxFit.cover)),
    );
  }

  Widget games1(String data1,String data) {
    return CupertinoListTile(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.activeBlue,
              image: DecorationImage(image: AssetImage("$data1"),fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$data",
                style: TextStyle(fontSize: 18, color: CupertinoColors.black),
              ),
              Text(
                "All AR Games",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.black.withOpacity(0.5)),
              ),
              SizedBox(height: 20),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: CupertinoColors.black.withOpacity(0.1),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Get",
                  style: TextStyle(
                      color: CupertinoColors.activeBlue.withOpacity(0.5),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
