import 'package:flutter/cupertino.dart';

class Updets_screen extends StatefulWidget {
  const Updets_screen({Key? key}) : super(key: key);

  @override
  State<Updets_screen> createState() => _Updets_screenState();
}

class _Updets_screenState extends State<Updets_screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Text("Updates"));
  }
}
