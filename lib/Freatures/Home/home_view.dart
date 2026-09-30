import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/Freatures/Home/Models/product_model.dart';

class HomeView extends StatelessWidget {
  List<ProductModel> products = [];
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              itemCount: snapshot.data!.length,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        snapshot.data![index].thumbnail??'',
                        width: 140.w,
                        height: 140.h,
                      ),
                      Text(
                        snapshot.data![index].title.toString(),
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text(
                        snapshot.data![index].price.toString(),
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }

  Future<List<ProductModel>> getAllProducts() async {
    final response = await Dio().get('https://dummyjson.com/products');
    products = response.data["products"].map<ProductModel>((product) {
      return ProductModel.fromJson(product);
    }).toList();
    

    return products;
  }
}
