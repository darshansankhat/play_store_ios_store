import 'package:flutter/material.dart';

class Movi_TV_screen extends StatefulWidget {
  const Movi_TV_screen({Key? key}) : super(key: key);

  @override
  State<Movi_TV_screen> createState() => _Movi_TV_screenState();
}

class _Movi_TV_screenState extends State<Movi_TV_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Movi_TV")),
    );
  }
}
