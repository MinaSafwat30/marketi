import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Freatures/Home/Widgets/NavBar.dart';
// import 'package:marketi/Freatures/Home/first_3_pages_view.dart';
import 'package:marketi/Freatures/Home/home_view.dart';

void main() {
  runApp(Marketi());
  getAllProducts();
}

void getAllProducts() async {
  final response = await Dio().get('https://dummyjson.com/products');
  print('Response data From API :${response.data}');
  print('Status Code :${response.statusCode}');
}

class Marketi extends StatelessWidget {
  const Marketi({super.key});

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
          theme: ThemeData(primarySwatch: Colors.blue),
          // home: First3PagesView(idx: 0),
          home: NavBar(),
        );
      },
    );
  }
}
