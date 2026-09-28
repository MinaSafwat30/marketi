import 'package:flutter/material.dart';
import 'package:marketi/Freatures/Home/first_3_pages_view.dart';

class home_view extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First3PagesView(idx: 0,),
    );
  }
}