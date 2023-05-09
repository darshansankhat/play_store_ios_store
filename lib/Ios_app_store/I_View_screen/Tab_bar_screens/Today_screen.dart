import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class Today_screen extends StatefulWidget {
  const Today_screen({Key? key}) : super(key: key);

  @override
  State<Today_screen> createState() => _Today_screenState();
}

class _Today_screenState extends State<Today_screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //date
              SizedBox(height: 8.h),
              Text(
                "MONDAY,MAY  1",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.black.withOpacity(0.5)),
              ),
              //top
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 40,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
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
                        )),
                  )
                ],
              ),
              //image container
              SizedBox(height: 10),
              games("assets/image/I_image/i1.jpg","Zoo Puzzle"),
              games("assets/image/I_image/i2.jpg","Farm Slam"),
              games("assets/image/I_image/i3.jpg","IDLE Arrows"),
            ],
          ),
        ),
      ),
    );
  }

  Widget games(String data,name) {
    return Stack(
      children:[
        //image
        Container(
          height: 50.h,
          width: 100.w,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CupertinoColors.white,
            boxShadow: [BoxShadow(color: CupertinoColors.black,blurRadius: 2)],
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("$data",fit: BoxFit.fill,)),
        ),
        //name
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 30),
          child: Text("SERIOUSLY?",style: TextStyle(fontSize: 18,color: CupertinoColors.white.withOpacity(0.5)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 60),
          child: Text("$name",style: TextStyle(fontSize: 30,color: CupertinoColors.white,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 350),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry",style: TextStyle(color: CupertinoColors.white.withOpacity(0.5)),),
        )
      ],
    );
  }
}
