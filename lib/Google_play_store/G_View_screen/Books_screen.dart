import 'package:flutter/material.dart';

class Books_screen extends StatefulWidget {
  const Books_screen({Key? key}) : super(key: key);

  @override
  State<Books_screen> createState() => _Books_screenState();
}

class _Books_screenState extends State<Books_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Book")),
    );
  }
}
