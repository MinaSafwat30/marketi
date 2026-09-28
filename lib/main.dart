import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Freatures/Home/home_view.dart';

void main() {
  runApp(Marketi());
}

class Marketi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Marketi',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: home_view(),
        );
      },
    );
  }
}
