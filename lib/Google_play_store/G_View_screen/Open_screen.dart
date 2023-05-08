import 'package:flutter/material.dart';

class open_screen extends StatefulWidget {
  const open_screen({Key? key}) : super(key: key);

  @override
  State<open_screen> createState() => _open_screenState();
}

class _open_screenState extends State<open_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff303030),
          elevation: 0,
          leading: Icon(Icons.arrow_back,color: Colors.white70,size: 25),
          actions: [
            Icon(Icons.search,size: 25,color: Colors.white70,),
            SizedBox(width: 20),
            Icon(Icons.more_vert_rounded,size: 25,color: Colors.white70,),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
